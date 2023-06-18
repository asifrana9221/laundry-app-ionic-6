import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule, ModalController, NavController, NavParams } from '@ionic/angular';
import { UtilService } from 'src/app/services/util.service';

@Component({
  selector: 'app-success',
  templateUrl: './success.page.html',
  styleUrls: ['./success.page.scss'],
  standalone: true,
  imports: [IonicModule, CommonModule, FormsModule]
})
export class SuccessPage implements OnInit {
  orderId: any;
  constructor(
    private modalCrtl: ModalController,
    private navCtrl: NavController,
    private navParam: NavParams,
    public util: UtilService
  ) {
    this.orderId = this.navParam.get('id');
    console.log(this.orderId);
  }

  ngOnInit() {
  }

  goToHome() {
    this.modalCrtl.dismiss();
    this.navCtrl.navigateRoot(['/tabs/home'], { replaceUrl: true, skipLocationChange: true });
  }

  goToOrderInfo() {
    this.modalCrtl.dismiss();
    this.navCtrl.navigateRoot(['/tabs/history',], { replaceUrl: true, skipLocationChange: true });
  }
}
