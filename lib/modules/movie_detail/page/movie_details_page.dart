import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies/modules/home/view/loading_view.dart';
import 'package:movies/modules/movie_detail/view/movie_details_view.dart';
import 'package:movies/modules/movie_detail/view_model/movie_details_view_model.dart';
import 'package:movies/widgets/base_widget.dart';
import 'package:movies/widgets/components/empty_screen.dart';

class MovieDetailsPage extends BaseWidget<MovieDetailsViewModel> {

  MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return viewModel.obx(
      (state) => MovieDetailsView(),
      onError: (error) => _tryAgain(text: error),
      onLoading: LoadingView(),
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
