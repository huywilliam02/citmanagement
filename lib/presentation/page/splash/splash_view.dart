import 'splash.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with WidgetsBindingObserver {
  late StreamSubscription<ConnectivityResult> _onConnectivityChanged;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    bool firstTime = true;
    _onConnectivityChanged = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (!firstTime) {
        bool isNotConnected = result != ConnectivityResult.wifi &&
            result != ConnectivityResult.mobile;
        isNotConnected
            ? const SizedBox()
            : ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: isNotConnected ? Colors.red : Colors.green,
          duration: Duration(seconds: isNotConnected ? 6000 : 3),
          content: Text(
            isNotConnected ? 'no_connection' : 'connected',
            textAlign: TextAlign.center,
          ),
        ));
        if (!isNotConnected) {
          // _route();  note
        }
      }
      firstTime = false;
    });

    // Get.find<SplashController>().initSharedData();  note
    // Get.find<SplashController>().removeSharedData();

    // Get.find<CartController>().getCartData();  note
    // _route(); note
  }

  @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if (AppLifecycleState.resumed == state) {
  //     if (Get.find<SplashController>().getBranchId() < 1) {
  //       RouteHelper.openDialog(context, const SettingWidget(formSplash: true),
  //           isDismissible: false);
  //     }
  //   }
  // }  note

  @override
  void dispose() {
    super.dispose();

    WidgetsBinding.instance.removeObserver(this);
    _onConnectivityChanged.cancel();
  }

  // void _route() {
  //   Get.find<SplashController>().getConfigData().then((value) {
  //     Timer(const Duration(seconds: 2), () async {
  //       if (Get.find<SplashController>().getBranchId() < 1) {
  //         RouteHelper.openDialog(context, const SettingWidget(formSplash: true),
  //             isDismissible: false);
  //       } else {
  //         if (ResponsiveHelper.isTab(context) &&
  //             (Get.find<PromotionalController>()
  //                 .getPromotion('', all: true)
  //                 .isNotEmpty)) {
  //           Get.offAll(() => const PromotionalPageScreen());
  //         } else {
  //           Get.offNamed(RouteHelper.home);
  //         }
  //       }
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        // onTap: Get.find<SplashController>().getBranchId() < 1
        //     ? () {
        //         RouteHelper.openDialog(
        //           context,
        //           const SettingWidget(formSplash: true),
        //           isDismissible: false,
        //         );
        //       }
        //     : null,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(Images.splashImage, width: Get.height * 0.1),
                  const Text(
                    "Quỹ Đạo Số Cho Doanh Nghiệp",
                    style: TextStyle(color: Color.fromARGB(255, 213, 197, 55), fontSize: 26),
                  ),
                  // Image.asset(Images.logo, width: Get.height * 0.2),
                ],
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: Get.width,
                  child: Lottie.asset(
                    fit: BoxFit.fitWidth,
                    Images.waveLoading,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
