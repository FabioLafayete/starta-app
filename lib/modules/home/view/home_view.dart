import 'package:flutter/material.dart';
import '../../../widgets/base_page.dart';
import '../../../widgets/base_widget.dart';
import '../model/popular_movies/popular_movies_model.dart';


class HomeView extends BaseWidget {

  HomeView({
    Key? key,
    required this.model
  }) : super(key: key);

  final PopularMoviesModel model;

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: 'Filmes Populares',
        body: Column(
          children: [
            text(model.results.length.toString())
          ],
        )
    );
  }
}
