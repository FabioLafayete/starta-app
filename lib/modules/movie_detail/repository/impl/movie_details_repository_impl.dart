import 'package:movies/modules/home/model/movie_detail/movie_detail_model.dart';
import 'package:movies/modules/home/model/popular_movies/popular_movies_model.dart';
import 'package:movies/modules/movie_detail/repository/movie_details_repository.dart';
import 'package:movies/modules/movie_detail/service/movie_details_service.dart';

class MovieDetailsRepositoryImpl extends MovieDetailsRepository{

  MovieDetailsRepositoryImpl(this.movieDetailsService);

  final MovieDetailsService movieDetailsService;

  @override
  Future<MovieDetailModel> getMovieDetails(int id) =>
      movieDetailsService.getMovieDetails(id).then(
              (value) => MovieDetailModel.fromJson(value.data));

  @override
  Future<PopularMoviesModel> getMoviesSimilar(int id) =>
      movieDetailsService.getMoviesSimilar(id).then(
              (value) => PopularMoviesModel.fromJson(value.data));

}