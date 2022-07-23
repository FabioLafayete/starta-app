import 'package:get/get.dart';

class HomeViewModel extends GetxController with StateMixin<List<String>>{

  HomeViewModel({
    required this.test
  }) : super() {
    //change(null, status: RxStatus.error(test));
    //RxStatus.error(test);
    change(['', '', ''], status: RxStatus.success());
    print('CHEGOU AQUI');
  }

  final String test;


  void setError(String error) {

  }

}