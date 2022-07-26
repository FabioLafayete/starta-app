import 'package:get/get.dart';
import 'package:movies/config/app_config.dart';
import 'package:movies/modules/home/repository/impl/home_repository_impl.dart';
import 'package:movies/modules/home/service/impl/home_service_impl.dart';
import 'package:movies/modules/home/view_model/home_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movies/service/http/http_service.dart';
import 'package:movies/util/theme.dart';


main() {

  late HomeViewModel viewModel;

  setUp(() async {
    Get.put(AppConfig.instance);
    await AppConfig().load();
    Get.put(Themes(), permanent: true);
    Get.put<HomeViewModel>(HomeViewModel(
        repositoryImpl: HomeRepositoryImpl(
            HomeServiceImpl(HttpService())
        )
    ));
    viewModel = Get.find<HomeViewModel>();
  });

  group('Home View Model test', (){

    test("Default values", () async {
      expect(viewModel.loading, false);
      expect(viewModel.model, null);
    });

    test("Get data", () async {
      await viewModel.getData();
      expect(viewModel.model!.results.length, isNot(0));
      expect(viewModel.model!.totalResults, isNot(0));
      expect(viewModel.model!.totalPages, isNot(0));
      expect(viewModel.model!.results[0].title, isNotEmpty);
      expect(viewModel.model!.results[0].posterPath, isNotEmpty);
    });

  });

}