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
  ];
}