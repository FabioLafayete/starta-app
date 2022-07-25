// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailsPageModel {
  PopularMoviesModel get moviesSimilar => throw _privateConstructorUsedError;
  MovieDetailModel get movieDetails => throw _privateConstructorUsedError;
  List<GenreModel> get genreModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsPageModelCopyWith<MovieDetailsPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsPageModelCopyWith<$Res> {
  factory $MovieDetailsPageModelCopyWith(MovieDetailsPageModel value,
          $Res Function(MovieDetailsPageModel) then) =
      _$MovieDetailsPageModelCopyWithImpl<$Res>;
  $Res call(
      {PopularMoviesModel moviesSimilar,
      MovieDetailModel movieDetails,
      List<GenreModel> genreModel});

  $PopularMoviesModelCopyWith<$Res> get moviesSimilar;
  $MovieDetailModelCopyWith<$Res> get movieDetails;
}

/// @nodoc
class _$MovieDetailsPageModelCopyWithImpl<$Res>
    implements $MovieDetailsPageModelCopyWith<$Res> {
  _$MovieDetailsPageModelCopyWithImpl(this._value, this._then);

  final MovieDetailsPageModel _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsPageModel) _then;

  @override
  $Res call({
    Object? moviesSimilar = freezed,
    Object? movieDetails = freezed,
    Object? genreModel = freezed,
  }) {
    return _then(_value.copyWith(
      moviesSimilar: moviesSimilar == freezed
          ? _value.moviesSimilar
          : moviesSimilar // ignore: cast_nullable_to_non_nullable
              as PopularMoviesModel,
      movieDetails: movieDetails == freezed
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetailModel,
      genreModel: genreModel == freezed
          ? _value.genreModel
          : genreModel // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
    ));
  }

  @override
  $PopularMoviesModelCopyWith<$Res> get moviesSimilar {
    return $PopularMoviesModelCopyWith<$Res>(_value.moviesSimilar, (value) {
      return _then(_value.copyWith(moviesSimilar: value));
    });
  }

  @override
  $MovieDetailModelCopyWith<$Res> get movieDetails {
    return $MovieDetailModelCopyWith<$Res>(_value.movieDetails, (value) {
      return _then(_value.copyWith(movieDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_MovieDetailsPageModelCopyWith<$Res>
    implements $MovieDetailsPageModelCopyWith<$Res> {
  factory _$$_MovieDetailsPageModelCopyWith(_$_MovieDetailsPageModel value,
          $Res Function(_$_MovieDetailsPageModel) then) =
      __$$_MovieDetailsPageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {PopularMoviesModel moviesSimilar,
      MovieDetailModel movieDetails,
      List<GenreModel> genreModel});

  @override
  $PopularMoviesModelCopyWith<$Res> get moviesSimilar;
  @override
  $MovieDetailModelCopyWith<$Res> get movieDetails;
}

/// @nodoc
class __$$_MovieDetailsPageModelCopyWithImpl<$Res>
    extends _$MovieDetailsPageModelCopyWithImpl<$Res>
    implements _$$_MovieDetailsPageModelCopyWith<$Res> {
  __$$_MovieDetailsPageModelCopyWithImpl(_$_MovieDetailsPageModel _value,
      $Res Function(_$_MovieDetailsPageModel) _then)
      : super(_value, (v) => _then(v as _$_MovieDetailsPageModel));

  @override
  _$_MovieDetailsPageModel get _value =>
      super._value as _$_MovieDetailsPageModel;

  @override
  $Res call({
    Object? moviesSimilar = freezed,
    Object? movieDetails = freezed,
    Object? genreModel = freezed,
  }) {
    return _then(_$_MovieDetailsPageModel(
      moviesSimilar: moviesSimilar == freezed
          ? _value.moviesSimilar
          : moviesSimilar // ignore: cast_nullable_to_non_nullable
              as PopularMoviesModel,
      movieDetails: movieDetails == freezed
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetailModel,
      genreModel: genreModel == freezed
          ? _value._genreModel
          : genreModel // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
    ));
  }
}

/// @nodoc

class _$_MovieDetailsPageModel implements _MovieDetailsPageModel {
  const _$_MovieDetailsPageModel(
      {required this.moviesSimilar,
      required this.movieDetails,
      required final List<GenreModel> genreModel})
      : _genreModel = genreModel;

  @override
  final PopularMoviesModel moviesSimilar;
  @override
  final MovieDetailModel movieDetails;
  final List<GenreModel> _genreModel;
  @override
  List<GenreModel> get genreModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreModel);
  }

  @override
  String toString() {
    return 'MovieDetailsPageModel(moviesSimilar: $moviesSimilar, movieDetails: $movieDetails, genreModel: $genreModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailsPageModel &&
            const DeepCollectionEquality()
                .equals(other.moviesSimilar, moviesSimilar) &&
            const DeepCollectionEquality()
                .equals(other.movieDetails, movieDetails) &&
            const DeepCollectionEquality()
                .equals(other._genreModel, _genreModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(moviesSimilar),
      const DeepCollectionEquality().hash(movieDetails),
      const DeepCollectionEquality().hash(_genreModel));

  @JsonKey(ignore: true)
  @override
  _$$_MovieDetailsPageModelCopyWith<_$_MovieDetailsPageModel> get copyWith =>
      __$$_MovieDetailsPageModelCopyWithImpl<_$_MovieDetailsPageModel>(
          this, _$identity);
}

abstract class _MovieDetailsPageModel implements MovieDetailsPageModel {
  const factory _MovieDetailsPageModel(
      {required final PopularMoviesModel moviesSimilar,
      required final MovieDetailModel movieDetails,
      required final List<GenreModel> genreModel}) = _$_MovieDetailsPageModel;

  @override
  PopularMoviesModel get moviesSimilar;
  @override
  MovieDetailModel get movieDetails;
  @override
  List<GenreModel> get genreModel;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailsPageModelCopyWith<_$_MovieDetailsPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
