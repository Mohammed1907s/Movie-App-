
import 'package:clean_arch/movies/data/datasource/movie_remote_data_soure.dart';
import 'package:clean_arch/movies/data/repository/movies_repository.dart';
import 'package:clean_arch/movies/domain/repository/base_movies_repository.dart';
import 'package:clean_arch/movies/domain/usecase/get_movie_details_usecase.dart';
import 'package:clean_arch/movies/domain/usecase/get_now_playing_usecase.dart';
import 'package:clean_arch/movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:clean_arch/movies/domain/usecase/get_recommendation_use_case.dart';
import 'package:clean_arch/movies/domain/usecase/get_top_rated_movies_usecse.dart';
import 'package:clean_arch/movies/persintation/controller/movie_details_bloc.dart';
import 'package:clean_arch/movies/persintation/controller/movies_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
class ServicesLocator{
  void init(){
    /// Bloc
    sl.registerFactory(() => MoviesBloc(sl(),sl(),sl()));
    sl.registerFactory(() => MovieDetailsBloc(sl(),sl()));
    /// في حال كنت بدي كل ما اليوزر يدخل الشاشة اعمل رفرش للداتا راح استخدم المثيود register factory
    /// Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));
    /// Repository
    sl.registerLazySingleton<BaseMoviesRepository>(() =>MoviesRepository(sl()));
    ///DATA Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());
  }
}