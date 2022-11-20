import 'dart:async';

import 'package:clean_arch/core/usecase/base_usecase.dart';
import 'package:clean_arch/core/utils/enums.dart';
import 'package:clean_arch/movies/data/datasource/movie_remote_data_soure.dart';
import 'package:clean_arch/movies/data/repository/movies_repository.dart';
import 'package:clean_arch/movies/domain/repository/base_movies_repository.dart';
import 'package:clean_arch/movies/domain/usecase/get_now_playing_usecase.dart';
import 'package:clean_arch/movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:clean_arch/movies/persintation/controller/movies_event.dart';
import 'package:clean_arch/movies/persintation/controller/movies_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/get_top_rated_movies_usecse.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  MoviesBloc(this.getNowPlayingMoviesUseCase, this.getPopularMoviesUseCase,
      this.getTopRatedMoviesUseCase)
      : super( MoviesState()) {
    on<GetNowPlayingEvent>(_getNowPlayingMovies);

    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);


}
  FutureOr<void> _getNowPlayingMovies(GetNowPlayingEvent event, Emitter<MoviesState> emit) async {
    // BaseMovieRemoteDataSource baseMovieRemoteDataSource = MovieRemoteDataSource();
    // BaseMoviesRepository baseMoviesRepository = MoviesRepository(baseMovieRemoteDataSource);
    // final result = await GetNowPlayingMoviesUseCase(baseMoviesRepository).execute();
    final result = await getNowPlayingMoviesUseCase(const NoParameters());
    result.fold(
            (l) => emit(
            state.copyWith(
                nowPlayingState: RequestState.error,
                nowPlayingMessage: l.message
            )),


        //
        // MoviesState(
        // nowPlayingState: RequestState.error,
        // nowPlayingMessage: l.message)),
            (r) => emit(
            state.copyWith(
                nowPlayingMovies: r, nowPlayingState: RequestState.loaded)
        ));
    // MoviesState(
    // nowPlayingMovies: r, nowPlayingState: RequestState.loaded)));
  }

  FutureOr<void> _getPopularMovies(GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopularMoviesUseCase(const NoParameters());

    result.fold(
            (l) => emit(
            state.copyWith(
                popularState: RequestState.error, popularMessage: l.message)
        ),

        // MoviesState(
        // popularState: RequestState.error, popularMessage: l.message)),
            (r) => emit(
            state.copyWith(
                popularMovies: r, popularState: RequestState.loaded
            )));

    // MoviesState(
    // popularMovies: r, popularState: RequestState.loaded)));

  }



  FutureOr<void> _getTopRatedMovies(GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {

    final result = await getTopRatedMoviesUseCase(const NoParameters());
    result.fold(
            (l) => emit(
            state.copyWith(
              topRatedMessage: l.message,
              topRatedState: RequestState.error,
            )),
            (r) => emit(
            state.copyWith(
              topRatedMovies: r,
              topRatedState: RequestState.loaded,
            )));

    // MoviesState(
    // nowPlayingMovies: r, nowPlayingState: RequestState.loaded)));

  }
  }

