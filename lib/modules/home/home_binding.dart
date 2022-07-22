import 'package:get/get.dart';
import 'home_controller.dart';
import 'home_view_model.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {

    Get.put(HomeController());

    Get.put(HomeViewModel());

  }
}