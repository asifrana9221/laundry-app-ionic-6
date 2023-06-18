import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule, ModalController, NavParams } from '@ionic/angular';
import { UtilService } from 'src/app/services/util.service';
import { ApiService } from 'src/app/services/api.service';
import { NgOtpInputModule } from 'ng-otp-input';

@Component({
  selector: 'app-verify-reset',
  templateUrl: './verify-reset.page.html',
  styleUrls: ['./verify-reset.page.scss'],
  standalone: true,
  imports: [IonicModule, CommonModule, FormsModule, NgOtpInputModule]
})
export class VerifyResetPage implements OnInit {
  id: any;
  to: any;
  otp: any;
  submitted = false;
  isLogin: boolean = false;
  email: any = '';
  type: any = '';
  constructor(
    private navParam: NavParams,
    private modalCtrl: ModalController,
    public util: UtilService,
    public api: ApiService
  ) {
    this.id = this.navParam.get('id');
    this.to = this.navParam.get('to');
    const obj = this.navParam.get('obj');
    console.log(this.id, this.to);
    this.type = 'email';
    this.email = obj.email;
  }

  ngOnInit() {
  }

  onOtpChange(event: any) {
    console.log(event);
    this.otp = event;
  }

  onSubmit() {
    if (this.otp === '' || !this.otp) {
      this.util.errorToast(this.util.translate('Please enter OTP'));
      return false;
    }
    this.submitted = false;
    this.isLogin = true;
    const param = {
      id: this.id,
      otp: this.otp,
      type: this.type,
      email: this.email,
    };
    this.api.post_public('v1/otp/verifyOTPReset', param).then((data: any) => {
      console.log(data);
      this.isLogin = false;
      if (data && data.status && data.status === 200 && data.data) {
        this.close(data, 'ok');
      }
    }, error => {
      this.isLogin = false;
      console.log(error);
      if (error && error.status === 401 && error.error.error) {
        this.util.errorToast(error.error.error);
        return false;
      }
      if (error && error.status === 500 && error.error.error) {
        this.util.errorToast(error.error.error);
        return false;
      }
      this.isLogin = false;
      this.util.errorToast(this.util.translate('Wrong OTP'));
    }).catch((error) => {
      this.isLogin = false;
      console.log(error);
      if (error && error.status === 401 && error.error.error) {
        this.util.errorToast(error.error.error);
        return false;
      }
      if (error && error.status === 500 && error.error.error) {
        this.util.errorToast(error.error.error);
        return false;
      }
      this.isLogin = false;
      this.util.errorToast(this.util.translate('Wrong OTP'));
    });
  }

  close(data: any, role: any) {
    this.modalCtrl.dismiss(data, role);
  }
}
