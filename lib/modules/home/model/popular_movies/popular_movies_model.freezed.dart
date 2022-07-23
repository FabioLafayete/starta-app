// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularMoviesModel _$PopularMoviesModelFromJson(Map<String, dynamic> json) {
  return _PopularMoviesModel.fromJson(json);
}

/// @nodoc
mixin _$PopularMoviesModel {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  List<MovieDetailModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularMoviesModelCopyWith<PopularMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesModelCopyWith<$Res> {
  factory $PopularMoviesModelCopyWith(
          PopularMoviesModel value, $Res Function(PopularMoviesModel) then) =
      _$PopularMoviesModelCopyWithImpl<$Res>;
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      List<MovieDetailModel> results});
}

/// @nodoc
class _$PopularMoviesModelCopyWithImpl<$Res>
    implements $PopularMoviesModelCopyWith<$Res> {
  _$PopularMoviesModelCopyWithImpl(this._value, this._then);

  final PopularMoviesModel _value;
  // ignore: unused_field
  final $Res Function(PopularMoviesModel) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDetailModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_PopularMoviesModelCopyWith<$Res>
    implements $PopularMoviesModelCopyWith<$Res> {
  factory _$$_PopularMoviesModelCopyWith(_$_PopularMoviesModel value,
          $Res Function(_$_PopularMoviesModel) then) =
      __$$_PopularMoviesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      List<MovieDetailModel> results});
}

/// @nodoc
class __$$_PopularMoviesModelCopyWithImpl<$Res>
    extends _$PopularMoviesModelCopyWithImpl<$Res>
    implements _$$_PopularMoviesModelCopyWith<$Res> {
  __$$_PopularMoviesModelCopyWithImpl(
      _$_PopularMoviesModel _value, $Res Function(_$_PopularMoviesModel) _then)
      : super(_value, (v) => _then(v as _$_PopularMoviesModel));

  @override
  _$_PopularMoviesModel get _value => super._value as _$_PopularMoviesModel;

  @override
  $Res call({
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_PopularMoviesModel(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDetailModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PopularMoviesModel implements _PopularMoviesModel {
  const _$_PopularMoviesModel(
      {required this.page,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults,
      required final List<MovieDetailModel> results})
      : _results = results;

  factory _$_PopularMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PopularMoviesModelFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  final List<MovieDetailModel> _results;
  @override
  List<MovieDetailModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PopularMoviesModel(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopularMoviesModel &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_PopularMoviesModelCopyWith<_$_PopularMoviesModel> get copyWith =>
      __$$_PopularMoviesModelCopyWithImpl<_$_PopularMoviesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PopularMoviesModelToJson(this);
  }
}

abstract class _PopularMoviesModel implements PopularMoviesModel {
  const factory _PopularMoviesModel(
      {required final int page,
      @JsonKey(name: 'total_pages') required final int totalPages,
      @JsonKey(name: 'total_results') required final int totalResults,
      required final List<MovieDetailModel> results}) = _$_PopularMoviesModel;

  factory _PopularMoviesModel.fromJson(Map<String, dynamic> json) =
      _$_PopularMoviesModel.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  List<MovieDetailModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PopularMoviesModelCopyWith<_$_PopularMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
