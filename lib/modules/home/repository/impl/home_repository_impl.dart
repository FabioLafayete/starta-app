import 'package:movies/modules/home/model/popular_movies/popular_movies_model.dart';
import 'package:movies/modules/home/repository/home_repository.dart';
import 'package:movies/modules/home/service/home_service.dart';

class HomeRepositoryImpl extends HomeRepository{

  HomeRepositoryImpl(this.homeService);

  final HomeService homeService;

  @override
  Future<PopularMoviesModel> getPopularMovies() {
    return homeService.getPopularMovies().then(
            (value) => PopularMoviesModel.fromJson(value.data)
    );
  }

}