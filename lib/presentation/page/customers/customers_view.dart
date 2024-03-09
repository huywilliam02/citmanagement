import 'package:company_management/presentation/controllers/customers/customers_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


class CustomersView extends GetView<CustomersController> {
  const CustomersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CustomersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
