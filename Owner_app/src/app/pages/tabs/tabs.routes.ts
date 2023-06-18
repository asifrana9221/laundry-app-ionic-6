import { Routes } from '@angular/router';
import { TabsPage } from './tabs.page';
import { AuthGuard } from 'src/app/guard/auth.guard';

export const routes: Routes = [
  {
    path: 'tabs',
    component: TabsPage,
    children: [
      {
        path: 'home',
        loadComponent: () =>
          import('../home/home.page').then((m) => m.HomePage),
        canActivate: [AuthGuard]
      },
      {
        path: 'earnings',
        loadComponent: () =>
          import('../earnings/earnings.page').then((m) => m.EarningsPage),
        canActivate: [AuthGuard]
      },
      {
        path: 'chats',
        loadComponent: () =>
          import('../chats/chats.page').then((m) => m.ChatsPage),
        canActivate: [AuthGuard]
      },
      {
        path: 'account',
        loadComponent: () =>
          import('../account/account.page').then((m) => m.AccountPage),
        canActivate: [AuthGuard]
      },
      {
        path: '',
        redirectTo: '/tabs/home',
        pathMatch: 'full',
      },
    ],
  },
  {
    path: '',
    redirectTo: '/tabs/home',
    pathMatch: 'full',
  },
];
