import 'package:company_management/base/base_bindings.dart';
import 'package:get/get.dart';
import '../create_potential_customers_controller.dart';

class CreatePotentialCustomersBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<CreatePotentialCustomersController>(
      () => CreatePotentialCustomersController(),
    );
  }
}
