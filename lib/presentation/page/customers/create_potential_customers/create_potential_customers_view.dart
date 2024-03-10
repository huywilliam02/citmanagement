import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/potential_customers/create_potential_customers_controller.dart';

class CreatePotentialCustomersView
    extends GetView<CreatePotentialCustomersController> {
  const CreatePotentialCustomersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreatePotentialCustomersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreatePotentialCustomersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
