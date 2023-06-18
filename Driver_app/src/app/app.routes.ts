import { Routes } from '@angular/router';
import { AuthGuard } from './guard/auth.guard';
export const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./pages/tabs/tabs.routes').then((m) => m.routes),
    canActivate: [AuthGuard]
  },
  {
    path: 'account',
    loadComponent: () => import('./pages/account/account.page').then(m => m.AccountPage)
  },
  {
    path: 'app-pages',
    loadComponent: () => import('./pages/app-pages/app-pages.page').then(m => m.AppPagesPage)
  },
  {
    path: 'chats',
    loadComponent: () => import('./pages/chats/chats.page').then(m => m.ChatsPage)
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
    path: 'inbox',
    loadComponent: () => import('./pages/inbox/inbox.page').then(m => m.InboxPage)
  },
  {
    path: 'languages',
    loadComponent: () => import('./pages/languages/languages.page').then(m => m.LanguagesPage)
  },
  {
    path: 'login',
    loadComponent: () => import('./pages/login/login.page').then(m => m.LoginPage)
  },
  {
    path: 'reset-password',
    loadComponent: () => import('./pages/reset-password/reset-password.page').then(m => m.ResetPasswordPage)
  },
  {
    path: 'select-country',
    loadComponent: () => import('./pages/select-country/select-country.page').then(m => m.SelectCountryPage)
  },
  {
    path: 'verify',
    loadComponent: () => import('./pages/verify/verify.page').then(m => m.VerifyPage)
  },
  {
    path: 'verify-reset',
    loadComponent: () => import('./pages/verify-reset/verify-reset.page').then(m => m.VerifyResetPage)
  },
];
