import 'package:get/get.dart';
import 'package:movies/modules/movie_detail/view_model/movie_details_view_model.dart';

class MovieDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieDetailsViewModel());
  }
}