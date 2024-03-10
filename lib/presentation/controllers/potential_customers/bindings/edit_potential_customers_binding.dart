import 'package:company_management/base/base_bindings.dart';
import 'package:get/get.dart';

import '../edit_potential_customers_controller.dart';

class EditPotentialCustomersBinding extends BaseBindings {
  @override
  void injectService() {
     Get.lazyPut<EditPotentialCustomersController>(
      () => EditPotentialCustomersController(),
    );
  }
}
