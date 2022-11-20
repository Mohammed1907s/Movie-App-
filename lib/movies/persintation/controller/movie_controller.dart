import 'package:clean_arch/core/usecase/base_usecase.dart';
import 'package:clean_arch/core/utils/enums.dart';
import 'package:clean_arch/movies/domain/usecase/get_now_playing_usecase.dart';
import 'package:clean_arch/movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:clean_arch/movies/domain/usecase/get_top_rated_movies_usecse.dart';
import 'package:get/get.dart';

import '../../domain/entities/movie.dart';
class GetxMovie extends GetxController{
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;

  List<Movie> nowPlayingMovies = [];
  RequestState nowPlayingState = RequestState.loading;
  String nowPlayingMessage = ' ';
  GetxMovie(this.getNowPlayingMoviesUseCase);


  @override
  void onInit() {
    getNowPlayingMovie();
    super.onInit();
  }

  Future<void> getNowPlayingMovie() async {
    final result = await getNowPlayingMoviesUseCase(const NoParameters());
    result.fold(
            (l) {
              nowPlayingState= RequestState.error;
              nowPlayingMessage = l.message;
              // update();
            },

            (r) {
              nowPlayingMovies= r;
              nowPlayingState= RequestState.loaded;
              // update();
            });
    update();
    print(result);
  }
}