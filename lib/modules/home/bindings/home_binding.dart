import 'package:get/get.dart';
import 'package:movies/modules/home/repository/impl/home_repository_impl.dart';
import 'package:movies/modules/home/service/impl/home_service_impl.dart';
import 'package:movies/service/http/http_service.dart';
import '../view_model/home_view_model.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel(
        repositoryImpl: HomeRepositoryImpl(
            HomeServiceImpl(HttpService())
        )
    ));
  }
}