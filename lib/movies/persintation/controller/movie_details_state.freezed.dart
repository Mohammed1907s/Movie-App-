// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailsState {
  MovieDetails? get movieDetails => throw _privateConstructorUsedError;
  RequestState get movieDetailsState => throw _privateConstructorUsedError;
  String get movieDetailsMessage => throw _privateConstructorUsedError;
  List<Recommendation> get recommendation => throw _privateConstructorUsedError;
  RequestState get recommendationState => throw _privateConstructorUsedError;
  String get recommendationMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsStateCopyWith<MovieDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res, MovieDetailsState>;
  @useResult
  $Res call(
      {MovieDetails? movieDetails,
      RequestState movieDetailsState,
      String movieDetailsMessage,
      List<Recommendation> recommendation,
      RequestState recommendationState,
      String recommendationMessage});
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res, $Val extends MovieDetailsState>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetails = freezed,
    Object? movieDetailsState = null,
    Object? movieDetailsMessage = null,
    Object? recommendation = null,
    Object? recommendationState = null,
    Object? recommendationMessage = null,
  }) {
    return _then(_value.copyWith(
      movieDetails: freezed == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetails?,
      movieDetailsState: null == movieDetailsState
          ? _value.movieDetailsState
          : movieDetailsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      movieDetailsMessage: null == movieDetailsMessage
          ? _value.movieDetailsMessage
          : movieDetailsMessage // ignore: cast_nullable_to_non_nullable
              as String,
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as List<Recommendation>,
      recommendationState: null == recommendationState
          ? _value.recommendationState
          : recommendationState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      recommendationMessage: null == recommendationMessage
          ? _value.recommendationMessage
          : recommendationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieDetailsStateCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory _$$_MovieDetailsStateCopyWith(_$_MovieDetailsState value,
          $Res Function(_$_MovieDetailsState) then) =
      __$$_MovieDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MovieDetails? movieDetails,
      RequestState movieDetailsState,
      String movieDetailsMessage,
      List<Recommendation> recommendation,
      RequestState recommendationState,
      String recommendationMessage});
}

/// @nodoc
class __$$_MovieDetailsStateCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$_MovieDetailsState>
    implements _$$_MovieDetailsStateCopyWith<$Res> {
  __$$_MovieDetailsStateCopyWithImpl(
      _$_MovieDetailsState _value, $Res Function(_$_MovieDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetails = freezed,
    Object? movieDetailsState = null,
    Object? movieDetailsMessage = null,
    Object? recommendation = null,
    Object? recommendationState = null,
    Object? recommendationMessage = null,
  }) {
    return _then(_$_MovieDetailsState(
      movieDetails: freezed == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetails?,
      movieDetailsState: null == movieDetailsState
          ? _value.movieDetailsState
          : movieDetailsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      movieDetailsMessage: null == movieDetailsMessage
          ? _value.movieDetailsMessage
          : movieDetailsMessage // ignore: cast_nullable_to_non_nullable
              as String,
      recommendation: null == recommendation
          ? _value._recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as List<Recommendation>,
      recommendationState: null == recommendationState
          ? _value.recommendationState
          : recommendationState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      recommendationMessage: null == recommendationMessage
          ? _value.recommendationMessage
          : recommendationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MovieDetailsState implements _MovieDetailsState {
  _$_MovieDetailsState(
      {this.movieDetails,
      this.movieDetailsState = RequestState.loading,
      this.movieDetailsMessage = '',
      final List<Recommendation> recommendation = const [],
      this.recommendationState = RequestState.loading,
      this.recommendationMessage = ''})
      : _recommendation = recommendation;

  @override
  final MovieDetails? movieDetails;
  @override
  @JsonKey()
  final RequestState movieDetailsState;
  @override
  @JsonKey()
  final String movieDetailsMessage;
  final List<Recommendation> _recommendation;
  @override
  @JsonKey()
  List<Recommendation> get recommendation {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendation);
  }

  @override
  @JsonKey()
  final RequestState recommendationState;
  @override
  @JsonKey()
  final String recommendationMessage;

  @override
  String toString() {
    return 'MovieDetailsState(movieDetails: $movieDetails, movieDetailsState: $movieDetailsState, movieDetailsMessage: $movieDetailsMessage, recommendation: $recommendation, recommendationState: $recommendationState, recommendationMessage: $recommendationMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailsState &&
            (identical(other.movieDetails, movieDetails) ||
                other.movieDetails == movieDetails) &&
            (identical(other.movieDetailsState, movieDetailsState) ||
                other.movieDetailsState == movieDetailsState) &&
            (identical(other.movieDetailsMessage, movieDetailsMessage) ||
                other.movieDetailsMessage == movieDetailsMessage) &&
            const DeepCollectionEquality()
                .equals(other._recommendation, _recommendation) &&
            (identical(other.recommendationState, recommendationState) ||
                other.recommendationState == recommendationState) &&
            (identical(other.recommendationMessage, recommendationMessage) ||
                other.recommendationMessage == recommendationMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      movieDetails,
      movieDetailsState,
      movieDetailsMessage,
      const DeepCollectionEquality().hash(_recommendation),
      recommendationState,
      recommendationMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailsStateCopyWith<_$_MovieDetailsState> get copyWith =>
      __$$_MovieDetailsStateCopyWithImpl<_$_MovieDetailsState>(
          this, _$identity);
}

abstract class _MovieDetailsState implements MovieDetailsState {
  factory _MovieDetailsState(
      {final MovieDetails? movieDetails,
      final RequestState movieDetailsState,
      final String movieDetailsMessage,
      final List<Recommendation> recommendation,
      final RequestState recommendationState,
      final String recommendationMessage}) = _$_MovieDetailsState;

  @override
  MovieDetails? get movieDetails;
  @override
  RequestState get movieDetailsState;
  @override
  String get movieDetailsMessage;
  @override
  List<Recommendation> get recommendation;
  @override
  RequestState get recommendationState;
  @override
  String get recommendationMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailsStateCopyWith<_$_MovieDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
