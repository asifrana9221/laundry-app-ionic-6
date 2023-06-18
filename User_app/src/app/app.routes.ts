import { Routes } from '@angular/router';
import { LocationGuard } from './locationGuard/location.guard';

export const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./pages/tabs/tabs.routes').then((m) => m.routes),
    canActivate: [LocationGuard]
  },
  {
    path: 'account',
    loadComponent: () => import('./pages/account/account.page').then(m => m.AccountPage)
  },
  {
    path: 'add-address',
    loadComponent: () => import('./pages/add-address/add-address.page').then(m => m.AddAddressPage)
  },
  {
    path: 'add-rating',
    loadComponent: () => import('./pages/add-rating/add-rating.page').then(m => m.AddRatingPage)
  },
  {
    path: 'add-stripe-card',
    loadComponent: () => import('./pages/add-stripe-card/add-stripe-card.page').then(m => m.AddStripeCardPage)
  },
  {
    path: 'app-pages',
    loadComponent: () => import('./pages/app-pages/app-pages.page').then(m => m.AppPagesPage)
  },
  {
    path: 'cart',
    loadComponent: () => import('./pages/cart/cart.page').then(m => m.CartPage)
  },
  {
    path: 'categories',
    loadComponent: () => import('./pages/categories/categories.page').then(m => m.CategoriesPage)
  },
  {
    path: 'chats',
    loadComponent: () => import('./pages/chats/chats.page').then(m => m.ChatsPage)
  },
  {
    path: 'checkout',
    loadComponent: () => import('./pages/checkout/checkout.page').then(m => m.CheckoutPage)
  },
  {
    path: 'choose-location',
    loadComponent: () => import('./pages/choose-location/choose-location.page').then(m => m.ChooseLocationPage)
  },
  {
    path: 'complaints',
    loadComponent: () => import('./pages/complaints/complaints.page').then(m => m.ComplaintsPage)
  },
  {
    path: 'contact-us',
    loadComponent: () => import('./pages/contact-us/contact-us.page').then(m => m.ContactUsPage)
  },
  {
    path: 'edit-profile',
    loadComponent: () => import('./pages/edit-profile/edit-profile.page').then(m => m.EditProfilePage)
  },
  {
    path: 'history',
    loadComponent: () => import('./pages/history/history.page').then(m => m.HistoryPage)
  },
  {
    path: 'history-details',
    loadComponent: () => import('./pages/history-details/history-details.page').then(m => m.HistoryDetailsPage)
  },
  {
    path: 'home',
    loadComponent: () => import('./pages/home/home.page').then(m => m.HomePage)
  },
  {
    path: 'inbox',
    loadComponent: () => import('./pages/inbox/inbox.page').then(m => m.InboxPage)
  },
  {
    path: 'languages',
    loadComponent: () => import('./pages/languages/languages.page').then(m => m.LanguagesPage)
  },
  {
    path: 'location',
    loadComponent: () => import('./pages/location/location.page').then(m => m.LocationPage)
  },
  {
    path: 'login',
    loadComponent: () => import('./pages/login/login.page').then(m => m.LoginPage)
  },
  {
    path: 'maps',
    loadComponent: () => import('./pages/maps/maps.page').then(m => m.MapsPage)
  },
  {
    path: 'offers',
    loadComponent: () => import('./pages/offers/offers.page').then(m => m.OffersPage)
  },
  {
    path: 'redeem-success',
    loadComponent: () => import('./pages/redeem-success/redeem-success.page').then(m => m.RedeemSuccessPage)
  },
  {
    path: 'referral',
    loadComponent: () => import('./pages/referral/referral.page').then(m => m.ReferralPage)
  },
  {
    path: 'register',
    loadComponent: () => import('./pages/register/register.page').then(m => m.RegisterPage)
  },
  {
    path: 'reset-password',
    loadComponent: () => import('./pages/reset-password/reset-password.page').then(m => m.ResetPasswordPage)
  },
  {
    path: 'search',
    loadComponent: () => import('./pages/search/search.page').then(m => m.SearchPage)
  },
  {
    path: 'select-country',
    loadComponent: () => import('./pages/select-country/select-country.page').then(m => m.SelectCountryPage)
  },
  {
    path: 'services',
    loadComponent: () => import('./pages/services/services.page').then(m => m.ServicesPage)
  },
  {
    path: 'stripe-pay',
    loadComponent: () => import('./pages/stripe-pay/stripe-pay.page').then(m => m.StripePayPage)
  },
  {
    path: 'success',
    loadComponent: () => import('./pages/success/success.page').then(m => m.SuccessPage)
  },
  {
    path: 'verify',
    loadComponent: () => import('./pages/verify/verify.page').then(m => m.VerifyPage)
  },
  {
    path: 'verify-reset',
    loadComponent: () => import('./pages/verify-reset/verify-reset.page').then(m => m.VerifyResetPage)
  },
  {
    path: 'wallet',
    loadComponent: () => import('./pages/wallet/wallet.page').then(m => m.WalletPage)
  },
];
