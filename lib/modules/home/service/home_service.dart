import 'package:dio/dio.dart';

abstract class HomeService {
  Future<Response> getPopularMovies({int? page});
}