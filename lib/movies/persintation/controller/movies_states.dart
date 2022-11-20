import 'package:clean_arch/core/utils/enums.dart';
import 'package:clean_arch/movies/domain/entities/movie.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movies_states.freezed.dart';
@freezed
class MoviesState with _$MoviesState{
  // final List<Movie> nowPlayingMovies;
  // final RequestState nowPlayingState;
  // final String nowPlayingMessage;
  // final List<Movie> popularMovies;
  // final RequestState popularState;
  // final String popularMessage;
  // final List<Movie> topRatedMovies;
  // final RequestState topRatedState;
  // final String topRatedMessage;
  factory MoviesState({
    @Default([]) List<Movie> nowPlayingMovies,
    @Default(RequestState.loading) RequestState nowPlayingState,
    @Default('') String nowPlayingMessage,
    @Default([]) List<Movie> popularMovies,
    @Default(RequestState.loading) RequestState popularState,
    @Default('')String popularMessage,
    @Default([]) List<Movie> topRatedMovies,
    @Default(RequestState.loading) RequestState topRatedState,
    @Default('') String topRatedMessage,
  })= _MoviesState;
//   MoviesState copyWith({
//     List<Movie>? nowPlayingMovies,
//     RequestState? nowPlayingState,
//     String? nowPlayingMessage,
//     List<Movie>? popularMovies,
//     RequestState? popularState,
//     String? popularMessage,
//     List<Movie>? topRatedMovies,
//     RequestState? topRatedState,
//     String? topRatedMessage,
// }){
//     return MoviesState(
//       nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
//       nowPlayingState:  nowPlayingState ?? this.nowPlayingState,
//       nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
//       popularMovies: popularMovies ?? this.popularMovies,
//       popularState: popularState ?? this.popularState,
//       popularMessage: popularMessage ?? this.popularMessage,
//       topRatedMovies: topRatedMovies ?? this.topRatedMovies,
//       topRatedState: topRatedState?? this.topRatedState,
//       topRatedMessage: topRatedMessage ?? this.topRatedMessage
//     );
// }
//   @override
//   List<Object> get props =>
//       [nowPlayingMovies,
//         nowPlayingState,
//         nowPlayingMessage,
//         popularMovies,
//         popularState,
//         popularMessage,
//         topRatedMovies,
//         topRatedState,
//         topRatedMessage,
//       ];
}
