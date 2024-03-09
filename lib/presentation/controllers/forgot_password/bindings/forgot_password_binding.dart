import 'package:company_management/base/base_bindings.dart';
import 'package:company_management/presentation/controllers/forgot_password/forgot_password_controller.dart';
import 'package:get/get.dart';


class ForgotPasswordBinding extends BaseBindings {
  @override
  void injectService() {
  Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(),
    );
  }
}
