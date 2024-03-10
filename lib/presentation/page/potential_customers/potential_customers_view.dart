import 'package:company_management/presentation/page/forgot_password/forgot_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'potential_customers.dart';

class PotentialCustomersView extends BaseView<PotentialCustomersController> {
  const PotentialCustomersView({super.key});
  @override
  Widget buildView(BuildContext context) {
    return CommonScaffold(
      backgroundColor: ColorConstant.background_color,
      appBar: CommonAppBar(
        title: "Khách hàng tiềm năng",
        titleType: AppBarTitle.text,
        centerTitle: true,
        titleTextStyle: AppTextStyle.textTitleAppBar,
        leadingIcon: IconsUtils.back,
        onLeadingPressed: () => {
          Get.back(),
        },
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (!controller.lazyLoading.value &&
              scrollInfo.metrics.pixels ==
                  scrollInfo.metrics.maxScrollExtent) {}
          return true;
        },
        child: RefreshIndicator(
          onRefresh: () async => (),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 291,
                      height: 40,
                      child: TextField(
                        onChanged: (value) async {},
                        decoration: const InputDecoration(
                          hintText: "Tìm kiếm",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(IconsUtils.filter),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 9,
                child: buildPotentialCustomerList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.CREATE_POTENTIAL_CUSTOMERS);
        },
        backgroundColor: ColorConstant.blue0085FF,
        elevation: 4.0,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildPotentialCustomerList() {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: ColorConstant.background_color,
          elevation: 0.2,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: InkWell(
              onTap: () {},
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Đặng Văn Huy",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const Spacer(),
                      Text("6 tháng trước",
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("HSNL - Profile",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const Spacer(),
                      Text("5 tháng trước",
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                  CommonDivider(),
                  Row(
                    children: [
                      Text(
                        "367173718",
                        style: TextStyle(fontSize: 14),
                      ),
                      const Spacer(),
                      Text("Google",
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
