import 'package:clean_arch/movies/data/datasource/movie_remote_data_soure.dart';
import 'package:clean_arch/movies/domain/entities/movie.dart';
import 'package:clean_arch/movies/domain/entities/movie_details.dart';
import 'package:clean_arch/movies/domain/entities/recommendation.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../usecase/get_movie_details_usecase.dart';
import '../usecase/get_recommendation_use_case.dart';

abstract class BaseMoviesRepository{

  Future <Either<Failure,List<Movie>>>getNowPlayingMovies();
  Future<Either<Failure,List<Movie>>> getPopularMovies();
  Future<Either<Failure,List<Movie>>> getTopRatedMovies();
  Future<Either<Failure,MovieDetails>> getMovieDetails(MovieDetailsParameters parameters);
  Future<Either<Failure,List<Recommendation>>> getRecommendation(RecommendationParameters parameters);
}