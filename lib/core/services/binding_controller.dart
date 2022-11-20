

import 'package:clean_arch/movies/domain/repository/base_movies_repository.dart';
import 'package:clean_arch/movies/domain/usecase/get_now_playing_usecase.dart';
import 'package:clean_arch/movies/persintation/controller/movie_controller.dart';
import 'package:get/get.dart';

import '../../movies/data/datasource/movie_remote_data_soure.dart';
import '../../movies/data/repository/movies_repository.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BaseMovieRemoteDataSource>(()=>MovieRemoteDataSource());
    Get.lazyPut<BaseMoviesRepository>(()=>MoviesRepository(Get.find()));
    Get.lazyPut(()=>GetNowPlayingMoviesUseCase(Get.find()));
    Get.put(GetxMovie(Get.find()));
  }

}