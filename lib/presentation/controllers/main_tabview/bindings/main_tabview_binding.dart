import 'package:company_management/base/base_bindings.dart';
import 'package:get/get.dart';

import '../main_tabview_controller.dart';

class MainTabviewBinding extends BaseBindings {
  @override
  void injectService() {
    Get.lazyPut<MainTabviewController>(
      () => MainTabviewController(),
    );
  }
}
