import 'package:company_management/presentation/page/home/widgets/button_Tab_View.dart';

import 'home.dart';

class HomeView extends BaseView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget buildView(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ColorConstant.background_color,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Images.containerImage,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage(Images.avatar),
                                    ),
                                    SizedBox(
                                      width: UtilsReponsive.width(context, 10),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Xin chào,",
                                          style: AppTextStyle.textName,
                                        ),
                                        Text(
                                          "Đặng Văn Huy",
                                          style: AppTextStyle.textButton,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                Images.notification,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: UtilsReponsive.height(context, 10),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15, bottom: 30),
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: UtilsReponsive.height(
                                              context, 20),
                                        ),
                                        Text(
                                          "Mục tiêu",
                                          style:
                                              AppTextStyle.textTitleStatistical,
                                        ),
                                        Text(
                                          "0 / 0",
                                          style:
                                              AppTextStyle.textTitleStatistical,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: UtilsReponsive.height(
                                              context, 20),
                                        ),
                                        Text(
                                          "Các dự án Đang thực hiện",
                                          style:
                                              AppTextStyle.textTitleStatistical,
                                        ),
                                        Text(
                                          "12/45",
                                          style:
                                              AppTextStyle.textTitleStatistical,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: UtilsReponsive.height(context, 20),
                                ),
                                CommonDivider(),
                                Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          UtilsReponsive.height(context, 20),
                                    ),
                                    Text(
                                      "Các dự án Đang thực hiện",
                                      style: AppTextStyle.textTitleStatistical,
                                    ),
                                    Text(
                                      "12/45",
                                      style: AppTextStyle.textTitleStatistical,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ButtonTabView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
