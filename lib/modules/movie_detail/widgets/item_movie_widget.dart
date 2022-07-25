import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:movies/modules/home/model/movie_detail/movie_detail_model.dart';
import 'package:movies/modules/movie_detail/view_model/movie_details_view_model.dart';
import 'package:movies/widgets/base_widget.dart';

class ItemMovieWidget extends BaseWidget<MovieDetailsViewModel> {
  ItemMovieWidget({
    Key? key,
    required this.model
  }) : super(key: key);

  final MovieDetailModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () => viewModel.goToMovieDetails(model.id),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _image(),
            space(0.03, width: true),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(
                      model.title,
                      color: colors.text,
                      fontWeight: FontWeight.w500,
                      maxLines: 3,
                      textOverflow: TextOverflow.ellipsis,
                      fontSize: 18
                  ),
                  space(0.01),
                  Row(
                    children: [
                      text(
                        DateTime.parse(model.releaseDate).year.toString(),
                        color: colors.text,
                      ),
                      space(0.02, width: true),
                      Expanded(child: text(viewModel.getGenreById(model.genreIds!)))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _image(){
    return SizedBox(
      height: height * 0.12,
      child: Image.network(
        model.getPosterHD(),
        fit: BoxFit.fitHeight,
        filterQuality: FilterQuality.high,
        alignment: Alignment.topCenter,
        loadingBuilder: (_,image, loadingProgress){
          if (loadingProgress == null) return image;
          return SizedBox(
            height: 300,
            child: Center(
              child: SpinKitThreeBounce(
                color: colors.text,
                size: 20,
              ),
            ),
          );
        },
        errorBuilder: (_,__,___){
          return Center(
            child: Icon(
              Icons.image_not_supported_outlined,
              size: 25,
              color: colors.text,
            ),
          );
        },
      ),
    );
  }
}
