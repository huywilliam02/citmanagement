import 'package:company_management/base/base_bindings.dart';
import 'package:company_management/presentation/controllers/customers/customers_controller.dart';
import 'package:get/get.dart';


class CustomersBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<CustomersController>(
      () => CustomersController(),
    );
  }
}
