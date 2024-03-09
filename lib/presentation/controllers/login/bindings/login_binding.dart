import 'package:company_management/base/base_bindings.dart';
import 'package:get/get.dart';

import '../login_controller.dart';

class LoginBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
