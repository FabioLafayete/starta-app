import 'package:get/get.dart';
import 'package:movies/modules/movie_detail/repository/impl/movie_details_repository_impl.dart';
import 'package:movies/modules/movie_detail/service/impl/movie_details_service_impl.dart';
import 'package:movies/modules/movie_detail/view_model/movie_details_view_model.dart';
import 'package:movies/service/http/http_service.dart';

class MovieDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieDetailsViewModel(
      repositoryImpl: MovieDetailsRepositoryImpl(
        MovieDetailsServiceImpl(HttpService())
      )
    ));
  }
}