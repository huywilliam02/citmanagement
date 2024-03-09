import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controllers/potential_customers/potential_customers_controller.dart';

class PotentialCustomersView extends GetView<PotentialCustomersController> {
  const PotentialCustomersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PotentialCustomersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PotentialCustomersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
