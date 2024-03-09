import 'login.dart';

class LoginView extends BaseView<LoginController> {
  const LoginView({super.key});

  @override
  Widget buildView(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.onBackLoginPage();
        return true;
      },
      child: controller.isLoading.isTrue
          ? const CommonLoadingPageProgressIndicator()
          : CommonScaffold(
              // appBar: _buildAppBar(),
              body: SafeArea(
                child: Container(
                  margin: const EdgeInsets.only(top: 60, left: 16, right: 16),
                  width: context.width,
                  height: context.height,
                  child: SingleChildScrollView(
                    child: Form(
                      child: Column(
                        children: [
                          SizedBox(
                            height: UtilsReponsive.height(context, 30),
                          ),
                          _buildLogo(),
                          Text(
                            "Đăng nhập",
                            style: AppTextStyle.textTitleLogin,
                          ),
                          SizedBox(
                            height: UtilsReponsive.height(context, 20),
                          ),
                          _buildUsernameFormField(),
                          SizedBox(
                            height: UtilsReponsive.height(context, 20),
                          ),
                          _buildPasswordFormField(),
                          TextButton(
                            onPressed: () async {
                              Get.toNamed(Routes.FORGOT_PASSWORD);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Quên mật khẩu?",
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 133, 255, 100),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: UtilsReponsive.height(context, 10),
                          ),
                          _buildLoginButton(context),
                          SizedBox(
                            height: UtilsReponsive.height(context, 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: Image.asset(Images.splashImage, width: Get.height * 0.2),
    );
  }

  Widget _buildUsernameFormField() {
    return Obx(
      () => CommonFormFieldWidget(
        controllerEditting: controller.usernameController,
        textInputType: TextInputType.text,
        icon: const Icon(Icons.person),
        labelText: 'Tài khoản',
        errorText: controller.validateErrusername.value,
        setValueFunc: controller.setUserNameInput,
      ),
    );
  }

  Widget _buildPasswordFormField() {
    return Obx(
      () => CommonFormFieldWidget(
        isObscureText: controller.checkpassword.value,
        suffixIcon: IconButton(
          icon: Icon(
            controller.checkpassword.value
                ? Icons.visibility_off
                : Icons.visibility,
          ),
          onPressed: () {
            controller.checkpassword.value = !controller.checkpassword.value;
          },
        ),
        icon: const Icon(Icons.lock),
        textInputType: TextInputType.text,
        controllerEditting: controller.passwordController,
        errorText: controller.validateErrPassword.value,
        labelText: "Mật khẩu",
        setValueFunc: controller.setValuePassword,
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Obx(
      () => ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: context.width),
        child: ElevatedButton(
          style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll(Size(20, 60)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              controller.username.value != "" &&
                      controller.password.value != "" &&
                      controller.validateErrusername.isEmpty &&
                      controller.validateErrPassword.isEmpty
                  ? Colors.green
                  : ColorConstant.blue0085FF,
            ),
            padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
          ),
          child: Text(
            "Đăng Nhập",
            style: AppTextStyle.textButton,
          ),
          onPressed: () async {
            // await controller.login();
          },
        ),
      ),
    );
  }
}
