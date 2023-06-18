export interface AppSettings {
  id: number;
  name: string;
  mobile: string;
  email: string;
  address: string;
  city: string;
  state: string;
  zip: string;
  country: string;
  tax: number;
  delivery_charge: number;
  currencySymbol: string;
  currencySide: string;
  currencyCode: string;
  appDirection: string;
  logo: string;
  sms_name: string;
  have_shop: number;
  findType: number;
  reset_pwd: number;
  user_login: number;
  freelancer_login: number;
  user_verify_with: number;
  search_radius: number;
  country_modal: string;
  default_country_code: string;
  default_city_id: string;
  default_delivery_zip: string;
  social: string;
  app_color: string;
  app_status: number;
  status: number;
  allowDistance: number;
  searchResultKind: number;
  extra_field?: any;
}