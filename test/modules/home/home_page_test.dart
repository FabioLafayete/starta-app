import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies/config/app_config.dart';
import 'package:movies/modules/home/page/home_page.dart';
import 'package:movies/modules/home/repository/impl/home_repository_impl.dart';
import 'package:movies/modules/home/service/impl/home_service_impl.dart';
import 'package:movies/modules/home/view_model/home_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movies/service/http/http_service.dart';
import 'package:movies/util/theme.dart';


main() {

  setUp(() async {
    Get.put(AppConfig.instance);
    await AppConfig().load();
    Get.put(Themes(), permanent: true);
    Get.put<HomeViewModel>(HomeViewModel(
        repositoryImpl: HomeRepositoryImpl(
            HomeServiceImpl(HttpService())
        )
    ));
  });

  group('Home Page test', (){

    testWidgets("Home Page Init", (tester) async {
      await tester.pumpWidget(GetMaterialApp(home: HomePage()));
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

  });

}