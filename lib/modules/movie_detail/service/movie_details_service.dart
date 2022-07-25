import 'package:dio/dio.dart';

abstract class MovieDetailsService {
  Future<Response> getMovieDetails(int id);
  Future<Response> getMoviesSimilar(int id);
  Future<Response> getGenres();
}