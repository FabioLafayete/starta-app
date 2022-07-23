import 'package:get/get.dart';
import 'package:movies/modules/home/model/popular_movies/popular_movies_model.dart';
import 'package:movies/modules/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:movies/widgets/components/empty_screen.dart';

import '../../../widgets/base_widget.dart';
import '../view/home_view.dart';
import '../view/loading_view.dart';

class HomePage extends BaseWidget<HomeViewModel> {

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return viewModel.obx(
      (PopularMoviesModel? model) => HomeView(model: model!),
      onLoading: LoadingView(),
      onError: (error) => _tryAgain(text: error),
    );
  }

  Widget _tryAgain({String? text}){
    return EmptyScreen(
      title: text ?? 'Erro ao buscar filmes',
      nameButton: 'Tentar novamente',
      onPress: (){
        controller.getData();
      },
    );
  }

}
