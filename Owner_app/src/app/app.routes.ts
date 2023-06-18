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
    loadComponent: () => import('./pages/account/account.page').then(m => m.AccountPage),
    canActivate: [AuthGuard]
  },
  {
    path: 'add-timeslots',
    loadComponent: () => import('./pages/add-timeslots/add-timeslots.page').then(m => m.AddTimeslotsPage)
  },
  {
    path: 'app-pages',
    loadComponent: () => import('./pages/app-pages/app-pages.page').then(m => m.AppPagesPage)
  },
  {
    path: 'categories',
    loadComponent: () => import('./pages/categories/categories.page').then(m => m.CategoriesPage)
  },
  {
    path: 'chats',
    loadComponent: () => import('./pages/chats/chats.page').then(m => m.ChatsPage),
    canActivate: [AuthGuard]
  },
  {
    path: 'contact-us',
    loadComponent: () => import('./pages/contact-us/contact-us.page').then(m => m.ContactUsPage)
  },
  {
    path: 'earnings',
    loadComponent: () => import('./pages/earnings/earnings.page').then(m => m.EarningsPage),
    canActivate: [AuthGuard]
  },
  {
    path: 'edit-profile',
    loadComponent: () => import('./pages/edit-profile/edit-profile.page').then(m => m.EditProfilePage)
  },
  {
    path: 'history-details',
    loadComponent: () => import('./pages/history-details/history-details.page').then(m => m.HistoryDetailsPage)
  },
  {
    path: 'home',
    loadComponent: () => import('./pages/home/home.page').then(m => m.HomePage),
    canActivate: [AuthGuard]
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
    path: 'new-services',
    loadComponent: () => import('./pages/new-services/new-services.page').then(m => m.NewServicesPage)
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
    path: 'select-country',
    loadComponent: () => import('./pages/select-country/select-country.page').then(m => m.SelectCountryPage)
  },
  {
    path: 'select-driver',
    loadComponent: () => import('./pages/select-driver/select-driver.page').then(m => m.SelectDriverPage)
  },
  {
    path: 'services',
    loadComponent: () => import('./pages/services/services.page').then(m => m.ServicesPage)
  },
  {
    path: 'store-categories',
    loadComponent: () => import('./pages/store-categories/store-categories.page').then(m => m.StoreCategoriesPage)
  },
  {
    path: 'sub-categories',
    loadComponent: () => import('./pages/sub-categories/sub-categories.page').then(m => m.SubCategoriesPage)
  },
  {
    path: 'timeslots',
    loadComponent: () => import('./pages/timeslots/timeslots.page').then(m => m.TimeslotsPage)
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
