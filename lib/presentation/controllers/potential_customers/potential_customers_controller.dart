import 'package:company_management/presentation/page/potential_customers/potential_customers.dart';

class PotentialCustomersController extends BaseController {
  RxBool isLoading = true.obs;
  RxBool lazyLoading = false.obs;
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

  void increment() => count.value++;
}
