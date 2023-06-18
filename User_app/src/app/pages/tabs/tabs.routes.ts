import { Routes } from '@angular/router';
import { TabsPage } from './tabs.page';
import { LocationGuard } from 'src/app/locationGuard/location.guard';

export const routes: Routes = [
  {
    path: 'tabs',
    component: TabsPage,
    children: [
      {
        path: 'home',
        loadComponent: () =>
          import('../home/home.page').then((m) => m.HomePage),
        canActivate: [LocationGuard]
      },
      {
        path: 'maps',
        loadComponent: () =>
          import('../maps/maps.page').then((m) => m.MapsPage),
        canActivate: [LocationGuard]
      },
      {
        path: 'history',
        loadComponent: () =>
          import('../history/history.page').then((m) => m.HistoryPage),
      },
      {
        path: 'account',
        loadComponent: () =>
          import('../account/account.page').then((m) => m.AccountPage),
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
