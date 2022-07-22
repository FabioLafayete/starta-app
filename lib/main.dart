import 'package:movies/route/pages_name.dart';
import 'package:movies/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'config/app_config.dart';
import 'route/pages_routes.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _preload();
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: PagesNames.home,
        getPages: PagesRoutes.pages,
        locale: const Locale('pt', 'BR'),
        theme: Themes().lightTheme,
        darkTheme: Themes().darkTheme,
        themeMode: ThemeMode.light,
      )
  );
}


Future _preload() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  Get.put(AppConfig.instance);
  Get.put(Themes(), permanent: true);

  await Future.wait([
    AppConfig().load(),
  ]);
}