import 'package:get/get.dart';
import 'view_model/home_view_model.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeViewModel());
  }
}