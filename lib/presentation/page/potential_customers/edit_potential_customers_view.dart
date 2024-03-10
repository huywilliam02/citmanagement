import 'potential_customers.dart';

class EditPotentialCustomersView
    extends BaseView<EditPotentialCustomersController> {
  const EditPotentialCustomersView({super.key});
  @override
  Widget buildView(BuildContext context) {
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
