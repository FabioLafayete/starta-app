import 'package:movies/modules/home/model/movie_detail/movie_detail_model.dart';
import 'package:movies/modules/home/model/popular_movies/popular_movies_model.dart';
import 'package:movies/modules/movie_detail/model/genre/genre_model.dart';

abstract class MovieDetailsRepository {
  Future<MovieDetailModel> getMovieDetails(int id);
  Future<PopularMoviesModel> getMoviesSimilar(int id);
  Future<List<GenreModel>> getGenres();
}