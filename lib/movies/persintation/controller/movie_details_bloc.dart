import 'dart:async';
import 'dart:developer';

import 'package:clean_arch/core/utils/enums.dart';
import 'package:clean_arch/movies/domain/entities/movie_details.dart';
import 'package:clean_arch/movies/domain/entities/recommendation.dart';
import 'package:clean_arch/movies/domain/usecase/get_movie_details_usecase.dart';
import 'package:clean_arch/movies/domain/usecase/get_recommendation_use_case.dart';
import 'package:clean_arch/movies/persintation/controller/movie_details_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'movie_details_event.dart';


class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase,this.getRecommendationUseCase) : super( MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getRecommendation);
  }

  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParameters(movieId: event.id));

    result.fold(
        (l) => emit(state.copyWith(
            movieDetailsState: RequestState.error,
            movieDetailsMessage: l.message)),
        (r) => emit(state.copyWith(
            movieDetails: r, movieDetailsState: RequestState.loaded)));
  }

  Future<FutureOr<void>> _getRecommendation(GetMovieRecommendationEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getRecommendationUseCase( RecommendationParameters(event.id));

    result.fold(
            (l) => emit(state.copyWith(
            recommendationState: RequestState.error,
            recommendationMessage: l.message)),
            (r) => emit(state.copyWith(
            recommendation: r, recommendationState: RequestState.loaded)));
  }
}
