import 'package:company_management/presentation/page/forgot_password/forgot_password.dart';

class ForgotPasswordController extends BaseController {
  

  Rx<String> username = "".obs;
  Rx<String> password = "".obs;

  Rx<String> validateErrusername = "".obs;
  Rx<String> validateErrPassword = "".obs;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onBackLoginPage() {
    username("");
    password("");
    validateErrusername("");
    validateErrPassword("");
    usernameController.text = "";
    passwordController.text = "";
  }

  void increment() => count.value++;
}
