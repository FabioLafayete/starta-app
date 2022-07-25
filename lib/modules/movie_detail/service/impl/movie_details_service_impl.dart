import 'package:dio/dio.dart';
import 'package:movies/modules/movie_detail/constants/movie_details_constants.dart';
import 'package:movies/modules/movie_detail/service/movie_details_service.dart';
import 'package:movies/service/http/http_service.dart';

class MovieDetailsServiceImpl implements MovieDetailsService {

  MovieDetailsServiceImpl(this._service);

  final HttpService _service;

  @override
  Future<Response> getMovieDetails(int id) {
    return _service.request(
        type: RequestType.GET,
        path: MovieDetailsConstants.movieDetails(id.toString()),
    );
  }

  @override
  Future<Response> getMoviesSimilar(int id) {
    return _service.request(
      type: RequestType.GET,
      path: MovieDetailsConstants.moviesSimilar(id.toString()),
    );
  }

}