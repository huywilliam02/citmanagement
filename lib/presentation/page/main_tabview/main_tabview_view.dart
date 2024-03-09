import 'main_tabview.dart';


class MainTabView extends BaseView<MainTabviewController> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  MainTabView({super.key});

  @override
  Widget buildView(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.background_color,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Obx(
          () => controller.body.elementAt(
            controller.selectedIndex.value,
          ),
        ),
        bottomNavigationBar: Obx(
          () => BottomAppBar(
            color: ColorConstant.background_color,
            shape: CircularNotchedRectangle(),
            notchMargin: 0,
            child: Container(
              height: UtilsReponsive.height(context, 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              controller.onItemTapped1(0);
                            },
                            minWidth: UtilsReponsive.width(context, 40),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    IconsUtils.home,
                                    color: controller.selectedIndex.value == 0
                                        ? ColorConstant.buttonTabView
                                        : ColorConstant.secondary1,
                                  ),
                                  Text(
                                    "Trang chủ",
                                    style: TextStyle(
                                      color: controller.selectedIndex.value == 0
                                          ? ColorConstant.buttonTabView
                                          : ColorConstant.secondary1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            controller.onItemTapped1(1);
                          },
                          minWidth: UtilsReponsive.width(context, 40),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  IconsUtils.messages,
                                  color: controller.selectedIndex.value == 1
                                      ? ColorConstant.buttonTabView
                                      : ColorConstant.secondary1,
                                ),
                                Text("Tin nhắn",
                                    style: TextStyle(
                                      color: controller.selectedIndex.value == 1
                                          ? ColorConstant.buttonTabView
                                          : ColorConstant.secondary1,
                                    ))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            controller.onItemTapped1(2);
                          },
                          minWidth: UtilsReponsive.width(context, 40),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  IconsUtils.report,
                                  color: controller.selectedIndex.value == 2
                                      ? ColorConstant.buttonTabView
                                      : ColorConstant.secondary1,
                                ),
                                Text(
                                  "Bảng tin",
                                  style: TextStyle(
                                    color: controller.selectedIndex.value == 2
                                        ? ColorConstant.buttonTabView
                                        : ColorConstant.secondary1,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              controller.onItemTapped1(3);
                            },
                            minWidth: UtilsReponsive.width(context, 40),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    IconsUtils.more,
                                    color: controller.selectedIndex.value == 3
                                        ? ColorConstant.buttonTabView
                                        : ColorConstant.secondary1,
                                  ),
                                  Text(
                                    "Thêm",
                                    style: TextStyle(
                                      color: controller.selectedIndex.value == 3
                                          ? ColorConstant.buttonTabView
                                          : ColorConstant.secondary1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
