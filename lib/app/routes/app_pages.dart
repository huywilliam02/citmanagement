import 'package:company_management/presentation/controllers/potential_customers/bindings/potential_customers_binding.dart';
import 'package:company_management/presentation/page/customers/customers_view.dart';
import 'package:get/get.dart';

import '../../presentation/controllers/forgot_password/bindings/forgot_password_binding.dart';
import '../../presentation/controllers/home/bindings/home_binding.dart';
import '../../presentation/controllers/login/bindings/login_binding.dart';
import '../../presentation/controllers/main_tabview/bindings/main_tabview_binding.dart';
import '../../presentation/controllers/splash/bindings/splash_binding.dart';
import '../../presentation/page/forgot_password/forgot_password_view.dart';
import '../../presentation/page/home/home_view.dart';
import '../../presentation/page/login/login_view.dart';
import '../../presentation/page/main_tabview/main_tabview_view.dart';
import '../../presentation/page/splash/splash_view.dart';
import '../../presentation/controllers/customers/bindings/customers_binding.dart';
import '../../presentation/page/potential_customers/potential_customers_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_TABVIEW;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_TABVIEW,
      page: () => MainTabView(),
      binding: MainTabviewBinding(),
    ),
    GetPage(
      name: _Paths.POTENTIAL_CUSTOMERS,
      page: () => const PotentialCustomersView(),
      binding: PotentialCustomersBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMERS,
      page: () => const CustomersView(),
      binding: CustomersBinding(),
    ),
  ];
}
