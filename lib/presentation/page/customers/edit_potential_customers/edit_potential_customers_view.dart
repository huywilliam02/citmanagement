import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/potential_customers/edit_potential_customers_controller.dart';

class EditPotentialCustomersView
    extends GetView<EditPotentialCustomersController> {
  const EditPotentialCustomersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditPotentialCustomersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EditPotentialCustomersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
