import 'forgot_password.dart';

class ForgotPasswordView extends BaseView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});
  @override
  Widget buildView(BuildContext context) {
    return CommonScaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: UtilsReponsive.height(context, 50),
            ),
            Text(
              "Quên mật khẩu",
              style: TextStyleConstant.black20RobotoBold,
            ),
            Text(
              "Nhập số địa chỉ email của bạn để gửi yêu cầu cấp lại mật khẩu",
              style: TextStyleConstant.grey12Roboto,
            ),
            SizedBox(
              height: UtilsReponsive.height(context, 30),
            ),
            Row(
              children: [
                SizedBox(
                  width: UtilsReponsive.width(context, 5),
                ),
                Text(
                  "Địa chỉ email",
                  style: AppTextStyle.textTitleForm,
                ),
              ],
            ),
            _buildEmailFormField(),
            SizedBox(
              height: UtilsReponsive.height(context, 15),
            ),
            _buildConstrainBoxButton("Gửi"),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CommonAppBar(
      title: "",
      titleTextStyle: AppTextStyle.textTitleAppBar,
      centerTitle: true,
      titleType: AppBarTitle.text,
      leadingIcon: const Icon(Icons.arrow_back_ios_new),
      onLeadingPressed: () {
        controller.onBackLoginPage();
        Get.to(() => const LoginView());
      },
    );
  }

  Widget _buildEmailFormField() {
    return Obx(
      () => CommonFormFieldWidget(
        controllerEditting: controller.usernameController,
        textInputType: TextInputType.text,
        labelText: 'Địa chỉ email',
        errorText: controller.validateErrusername.value,
        setValueFunc: () {},
      ),
    );
  }

  Widget _buildConstrainBoxButton(String text) {
    return CommonConstrainBoxButton(
      text: text,
      onPressed: () {},
    );
  }
}
