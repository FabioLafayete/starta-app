import 'package:get_storage/get_storage.dart';
import 'package:movies/route/pages_name.dart';
import 'package:movies/service/storage/local_storage_service.dart';
import 'package:movies/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'config/app_config.dart';
import 'route/pages_routes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: PagesNames.home,
        getPages: PagesRoutes.pages,
        locale: const Locale('pt', 'BR'),
        theme: Themes().lightTheme,
        darkTheme: Themes().darkTheme,
        themeMode: ThemeMode.light,
        initialBinding: InitialBinding(),
      )
  );
}

class InitialBinding extends Bindings {
  @override
  void dependencies() async {
    Get.config(enableLog: true);
    Get.put(AppConfig.instance);
    Get.put(Themes(), permanent: true);
    Get.put<LocalStorageService>(LocalStorageService.instance);
    Themes().toggleDarkMode();

    await Future.wait([
      GetStorage.init(),
      AppConfig().load(),
    ]);
  }
}