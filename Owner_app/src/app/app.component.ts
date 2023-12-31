import { Component, EnvironmentInjector, inject } from '@angular/core';
import { AlertController, IonicModule } from '@ionic/angular';
import { CommonModule } from '@angular/common';
import { UtilService } from './services/util.service';
import { ApiService } from './services/api.service';
import { TranslateService } from '@ngx-translate/core';
import { Capacitor } from '@capacitor/core';
import {
  PushNotificationSchema,
  PushNotifications,
} from '@capacitor/push-notifications';
@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
  standalone: true,
  imports: [IonicModule, CommonModule],
})
export class AppComponent {
  public environmentInjector = inject(EnvironmentInjector);
  constructor(
    public util: UtilService,
    public api: ApiService,
    private alertController: AlertController,
    private translate: TranslateService,
  ) {
    const defaultSettings = {
      id: 1,
      name: '',
      mobile: '',
      email: '',
      address: '',
      city: '',
      state: '',
      zip: '',
      country: '',
      tax: 1,
      delivery_charge: 1,
      currencySymbol: '',
      currencySide: '',
      currencyCode: '',
      appDirection: '',
      logo: '',
      sms_name: '',
      have_shop: 1,
      findType: 1,
      reset_pwd: 1,
      user_login: 1,
      freelancer_login: 1,
      user_verify_with: 1,
      search_radius: 1,
      country_modal: '',
      default_country_code: '',
      default_city_id: '',
      default_delivery_zip: '',
      social: '',
      app_color: '',
      app_status: 1,
      status: 1,
      allowDistance: 1,
      searchResultKind: 1,
      extra_field: ''
    };
    const isPushNotificationsAvailable = Capacitor.isPluginAvailable('PushNotifications');
    if (isPushNotificationsAvailable) {
      this.initNotification();
    }
    this.util.settingInfo = defaultSettings;
    if (localStorage.getItem('uid') != null && localStorage.getItem('uid') && localStorage.getItem('uid') !== '' && localStorage.getItem('uid') !== 'null') {
      // this.getUserByID();
    }
    this.api.get_public('v1/settings/getDefault').then((data: any) => {
      console.log(data);
      if (data && data.status && data.status == 200) {
        const settings = data && data.data && data.data.settings ? data.data.settings : null;
        const support = data && data.data && data.data.support ? data.data.support : null;
        if (settings) {
          this.util.appLogo = settings.logo;
          this.util.direction = settings.appDirection;
          this.util.app_status = settings.app_status == 1 ? true : false;
          this.util.app_color = settings.app_color;
          this.util.cside = settings.currencySide;
          this.util.currecny = settings.currencySymbol;
          this.util.settingInfo = settings;

          document.documentElement.dir = this.util.direction;
          const lng = localStorage.getItem('selectedLanguage');
          if (!lng || lng == null) {
            localStorage.setItem('selectedLanguage', 'en');
            localStorage.setItem('direction', 'ltr');
          }

          const direaction = localStorage.getItem('direction') as string;
          this.translate.use(localStorage.getItem('selectedLanguage') || 'en');
          document.documentElement.dir = direaction;

        }

        if (support) {
          this.util.supportData = support;
        }
      }
    }, error => {
      console.log(error);
      this.util.apiErrorHandler(error);
    }).catch(error => {
      console.log(error);
      this.util.apiErrorHandler(error);
    });
  }

  initNotification() {
    PushNotifications.requestPermissions().then(result => {
      if (result.receive === 'granted') {
        // Register with Apple / Google to receive push via APNS/FCM
        PushNotifications.register();
      } else {
        // Show some error
      }
    });

    PushNotifications.addListener(
      'registration',
      (token: any) => {
        console.log('MY push Token', token.value);
        localStorage.setItem('pushToken', token.value);
        const uid = localStorage.getItem('uid');
        if (uid != null && uid && uid !== '' && uid !== 'null') {
          this.updateFCMToken();
        }
      },
    );

    PushNotifications.addListener('registrationError', (error: any) => {
      console.log(error);
    });

    PushNotifications.addListener(
      'pushNotificationReceived',
      (notification: PushNotificationSchema) => {
        console.log('Nticiation', notification);
        this.presentAlertConfirm(notification.title, notification.body);
      },
    );

    PushNotifications.addListener(
      'pushNotificationActionPerformed',
      (notification: any) => {
        // alert('Push action performed: ' + JSON.stringify(notification));
        console.log('Notifcation actione', notification);
      },
    );
  }

  async presentAlertConfirm(title: any, body: any) {
    const alert = await this.alertController.create({
      header: this.util.translate('Notification'),
      subHeader: title,
      message: body,
      buttons: [
        {
          text: this.util.translate('Cancel'),
          role: 'cancel',
          cssClass: 'secondary',
          handler: () => {
            console.log('Confirm Cancel: blah');
          }
        }, {
          text: this.util.translate('Okay'),
          handler: () => {
            console.log('Confirm Okay');
          }
        }
      ]
    });

    await alert.present();
  }

  updateFCMToken() {
    const param = {
      id: localStorage.getItem('uid'),
      fcm_token: localStorage.getItem('pushToken') && localStorage.getItem('pushToken') != null ? localStorage.getItem('pushToken') : 'NA'
    }
    this.api.post_private('v1/profile/update', param).then((data: any) => {
      console.log(data);
    }, error => {
      console.log(error);
    }).catch(error => {
      console.log(error);
    });
  }
}
