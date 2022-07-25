// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailModel _$MovieDetailModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  double get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  DateTime get releaseDate => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailModelCopyWith<MovieDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailModelCopyWith<$Res> {
  factory $MovieDetailModelCopyWith(
          MovieDetailModel value, $Res Function(MovieDetailModel) then) =
      _$MovieDetailModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'genre_ids') List<int>? genreIds,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') double voteCount,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'release_date') DateTime releaseDate,
      bool adult,
      String? homepage});
}

/// @nodoc
class _$MovieDetailModelCopyWithImpl<$Res>
    implements $MovieDetailModelCopyWith<$Res> {
  _$MovieDetailModelCopyWithImpl(this._value, this._then);

  final MovieDetailModel _value;
  // ignore: unused_field
  final $Res Function(MovieDetailModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? genreIds = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? releaseDate = freezed,
    Object? adult = freezed,
    Object? homepage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieDetailModelCopyWith<$Res>
    implements $MovieDetailModelCopyWith<$Res> {
  factory _$$_MovieDetailModelCopyWith(
          _$_MovieDetailModel value, $Res Function(_$_MovieDetailModel) then) =
      __$$_MovieDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'genre_ids') List<int>? genreIds,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') double voteCount,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'release_date') DateTime releaseDate,
      bool adult,
      String? homepage});
}

/// @nodoc
class __$$_MovieDetailModelCopyWithImpl<$Res>
    extends _$MovieDetailModelCopyWithImpl<$Res>
    implements _$$_MovieDetailModelCopyWith<$Res> {
  __$$_MovieDetailModelCopyWithImpl(
      _$_MovieDetailModel _value, $Res Function(_$_MovieDetailModel) _then)
      : super(_value, (v) => _then(v as _$_MovieDetailModel));

  @override
  _$_MovieDetailModel get _value => super._value as _$_MovieDetailModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? genreIds = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? releaseDate = freezed,
    Object? adult = freezed,
    Object? homepage = freezed,
  }) {
    return _then(_$_MovieDetailModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      genreIds: genreIds == freezed
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailModel extends _MovieDetailModel {
  const _$_MovieDetailModel(
      {required this.id,
      required this.title,
      @JsonKey(name: 'original_title') required this.originalTitle,
      required this.overview,
      required this.popularity,
      @JsonKey(name: 'genre_ids') final List<int>? genreIds,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'release_date') required this.releaseDate,
      this.adult = false,
      this.homepage})
      : _genreIds = genreIds,
        super._();

  factory _$_MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  final List<int>? _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final double voteCount;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'release_date')
  final DateTime releaseDate;
  @override
  @JsonKey()
  final bool adult;
  @override
  final String? homepage;

  @override
  String toString() {
    return 'MovieDetailModel(id: $id, title: $title, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, genreIds: $genreIds, voteAverage: $voteAverage, voteCount: $voteCount, posterPath: $posterPath, backdropPath: $backdropPath, releaseDate: $releaseDate, adult: $adult, homepage: $homepage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality().equals(other.homepage, homepage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(_genreIds),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(voteCount),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(homepage));

  @JsonKey(ignore: true)
  @override
  _$$_MovieDetailModelCopyWith<_$_MovieDetailModel> get copyWith =>
      __$$_MovieDetailModelCopyWithImpl<_$_MovieDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailModelToJson(this);
  }
}

abstract class _MovieDetailModel extends MovieDetailModel {
  const factory _MovieDetailModel(
      {required final int id,
      required final String title,
      @JsonKey(name: 'original_title') required final String originalTitle,
      required final String overview,
      required final double popularity,
      @JsonKey(name: 'genre_ids') final List<int>? genreIds,
      @JsonKey(name: 'vote_average') required final double voteAverage,
      @JsonKey(name: 'vote_count') required final double voteCount,
      @JsonKey(name: 'poster_path') required final String posterPath,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'release_date') required final DateTime releaseDate,
      final bool adult,
      final String? homepage}) = _$_MovieDetailModel;
  const _MovieDetailModel._() : super._();

  factory _MovieDetailModel.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  double get voteCount;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'release_date')
  DateTime get releaseDate;
  @override
  bool get adult;
  @override
  String? get homepage;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailModelCopyWith<_$_MovieDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
