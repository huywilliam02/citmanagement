import 'package:company_management/app/core/common/menu/common_card_button.dart';
import 'package:company_management/app/core/constants/color_constants.dart';
import 'package:company_management/presentation/page/login/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonTabView extends StatefulWidget {
  const ButtonTabView({super.key});

  @override
  _ButtonTabViewState createState() => _ButtonTabViewState();
}

class _ButtonTabViewState extends State<ButtonTabView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: ColorConstant.background_color,
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            children: [
              CommonCardButton(
                title: "Khách hàng tiềm năng",
                iconButton: "assets/images/client.png",
                onPressed: () {
                  Get.toNamed(Routes.POTENTIAL_CUSTOMERS);
                },
              ),
              CommonCardButton(
                title: "Khách hàng",
                iconButton: "assets/images/customer.png",
                onPressed: () {
                  Get.toNamed(Routes.CUSTOMERS);
                },
              ),
              CommonCardButton(
                title: "Chương trình",
                iconButton: "assets/images/program.png",
                onPressed: () {},
              ),
              CommonCardButton(
                title: "Hôm nay",
                iconButton: "assets/images/job.png",
                onPressed: () {},
              ),
              CommonCardButton(
                title: "Điểm danh",
                iconButton: "assets/images/checkin.png",
                onPressed: () {},
              ),
              CommonCardButton(
                title: "Cá nhân",
                iconButton: "assets/images/individual.png",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
