import 'package:dio/src/response.dart';
import 'package:movies/modules/home/constants/home_constants.dart';
import 'package:movies/service/http/http_service.dart';

import '../home_service.dart';

class HomeServiceImpl implements HomeService {

  HomeServiceImpl(this._service);

  final HttpService _service;

  @override
  Future<Response> getPopularMovies({int? page}) {
    return _service.request(
      type: RequestType.GET,
      path: HomeConstants.popularMovies,
      queryParameters: page != null ? {
        'page': page
      } : null
    );
  }

}