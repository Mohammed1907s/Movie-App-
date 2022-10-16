


import 'package:clean_arch/core/error/exception.dart';
import 'package:clean_arch/core/error/failure.dart';
import 'package:clean_arch/movies/domain/entities/movie.dart';
import 'package:clean_arch/movies/domain/entities/movie_details.dart';
import 'package:clean_arch/movies/domain/entities/recommendation.dart';
import 'package:clean_arch/movies/domain/repository/base_movies_repository.dart';
import 'package:clean_arch/movies/domain/usecase/get_movie_details_usecase.dart';
import 'package:clean_arch/movies/domain/usecase/get_recommendation_use_case.dart';
import 'package:dartz/dartz.dart';

import '../datasource/movie_remote_data_soure.dart';

class MoviesRepository extends BaseMoviesRepository{
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure,List<Movie>>>getNowPlayingMovies()async {
    final result =  await baseMovieRemoteDataSource.getNowPlayingMovies();

   try{
     return Right(result);
   } on ServerException catch (failure){
     return Left(ServerFailure(failure.errorMessageModel.statusMessage));
   }
  }

  @override
  Future<Either<Failure,List<Movie>>> getPopularMovies() async{
    final result =  await baseMovieRemoteDataSource.getPopularMovies();
    try{
      return Right(result);
    } on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure,List<Movie>>> getTopRatedMovies() async {
    final result =  await baseMovieRemoteDataSource.getTopRatedMovies();
    try{
      return Right(result);
    } on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(MovieDetailsParameters parameters) async {
    final result =  await baseMovieRemoteDataSource.getMovieDetails(parameters);
    try{
      return Right(result);
    } on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendation>>> getRecommendation(RecommendationParameters parameters) async {
    final result =  await baseMovieRemoteDataSource.getRecommendation(parameters);
    try{
      return Right(result);
    } on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

}