import 'potential_customers.dart';

class CreatePotentialCustomersView
    extends BaseView<CreatePotentialCustomersController> {
  const CreatePotentialCustomersView({super.key});
  @override
  Widget buildView(BuildContext context) {
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
