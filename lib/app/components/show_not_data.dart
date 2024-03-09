import 'package:company_management/app/util/icon_utils.dart';
import 'package:flutter/material.dart';

class ShowNotDataView extends StatelessWidget {
  const ShowNotDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 120),
          Image.asset(IconsUtils.notData),
          const Text('Không có dữ liệu',),
        ],
      ),
    );
  }
}
