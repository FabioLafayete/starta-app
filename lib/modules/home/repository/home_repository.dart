import 'package:movies/modules/home/model/popular_movies/popular_movies_model.dart';

abstract class HomeRepository {
  Future<PopularMoviesModel> getPopularMovies();
}