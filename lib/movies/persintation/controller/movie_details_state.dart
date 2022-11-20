
import 'package:clean_arch/core/utils/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/movie_details.dart';
import '../../domain/entities/recommendation.dart';
part 'movie_details_state.freezed.dart';
@freezed
class MovieDetailsState with _$MovieDetailsState{
  // final MovieDetails? movieDetails;
  // final RequestState movieDetailsState;
  // final String movieDetailsMessage;
  // final List<Recommendation> recommendation;
  // final RequestState recommendationState;
  // final String recommendationMessage;

  factory MovieDetailsState({
    MovieDetails? movieDetails,
    @Default(RequestState.loading) RequestState movieDetailsState,
    @Default('')String movieDetailsMessage,
    @Default([])List<Recommendation> recommendation,
    @Default(RequestState.loading) RequestState recommendationState,
    @Default('') String recommendationMessage,

  })=_MovieDetailsState;

  // MovieDetailsState copyWith({
  //   MovieDetails? movieDetails,
  //   RequestState? movieDetailsState,
  //   String? movieDetailsMessage,
  //   List<Recommendation>? recommendation,
  //   RequestState? recommendationState,
  //   String? recommendationMessage,
  // }) {
  //   return MovieDetailsState(
  //     movieDetails: movieDetails ?? this.movieDetails,
  //     movieDetailsState: movieDetailsState ?? this.movieDetailsState,
  //     movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
  //     recommendation: recommendation ?? this.recommendation,
  //     recommendationState: recommendationState ?? this.recommendationState,
  //     recommendationMessage: recommendationMessage ??
  //         this.recommendationMessage,
  //
  //   );
  // }
  //
  // @override
  // List<Object?> get props =>
  //     [
  //       movieDetails,
  //       movieDetailsState,
  //       movieDetailsMessage,
  //       recommendation,
  //       recommendationState,
  //       recommendationMessage,
  //     ];
}


