import 'package:movies/modules/movie_detail/bindings/movie_details_binding.dart';
import 'package:movies/modules/movie_detail/page/movie_details_page.dart';
import 'package:movies/route/pages_name.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/page/home_page.dart';

abstract class PagesRoutes {
  static final pages = [
    GetPage(
        name: PagesNames.home,
        page: () => HomePage(),
        binding: HomeBindings()
    ),
    GetPage(
        name: PagesNames.movieDetails,
        page: () => MovieDetailsPage(),
        binding: MovieDetailsBindings()
    ),
  ];
}