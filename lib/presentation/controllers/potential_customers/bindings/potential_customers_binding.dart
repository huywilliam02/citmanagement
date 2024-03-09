import 'package:company_management/base/base_bindings.dart';
import 'package:get/get.dart';

import '../potential_customers_controller.dart';

class PotentialCustomersBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<PotentialCustomersController>(
      () => PotentialCustomersController(),
    );
  }
}
