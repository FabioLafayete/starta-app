import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:movies/modules/home/model/movie_detail/movie_detail_model.dart';
import 'package:movies/widgets/base_widget.dart';

class MovieCatalog extends BaseWidget {

  MovieCatalog({
    Key? key,
    required this.model
  }) : super(key: key);

  final MovieDetailModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colors.textSecondary
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              model.getPosterHD(),
              fit: BoxFit.fitHeight,
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
            )
        ),
      ),
    );
  }
}
