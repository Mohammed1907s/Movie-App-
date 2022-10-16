import 'dart:developer';

import 'package:clean_arch/core/error/exception.dart';
import 'package:clean_arch/core/network/api_constant.dart';
import 'package:clean_arch/core/network/error_message_model.dart';
import 'package:clean_arch/core/utils/app_constant.dart';
import 'package:clean_arch/movies/data/models/movie_details_model.dart';
import 'package:clean_arch/movies/data/models/movies_model.dart';
import 'package:clean_arch/movies/data/models/recommendation_model.dart';
import 'package:clean_arch/movies/domain/usecase/get_movie_details_usecase.dart';
import 'package:clean_arch/movies/domain/usecase/get_recommendation_use_case.dart';
import 'package:dio/dio.dart';



abstract class BaseMovieRemoteDataSource{
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameters parameters);
  Future<List<RecommendationModel>> getRecommendation(RecommendationParameters parameters);
}
class MovieRemoteDataSource extends BaseMovieRemoteDataSource{
  @override
  Future<List<MovieModel>> getNowPlayingMovies()async{
    final response =await Dio().get(ApiConstant.nowPlayingMoviePath);
    // log(response.toString());
    if(response.statusCode ==200){
      return List<MovieModel>.from((response.data['results']as List).map((e) => MovieModel.fromJson(e)));
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response =await Dio().get(ApiConstant.popularMoviePath);


    if(response.statusCode ==200){
      return List<MovieModel>.from((response.data['results']as List).map((e) => MovieModel.fromJson(e)));
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final response =await Dio().get(ApiConstant.topRatedMoviesPath );


    if(response.statusCode ==200){
      return List<MovieModel>.from((response.data['results']as List).map((e) => MovieModel.fromJson(e)));
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameters parameters) async {
    final response =await Dio().get(ApiConstant.movieDetailsPath(parameters.movieId) );


    if(response.statusCode ==200){
      return MovieDetailsModel.fromJson(response.data);
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<RecommendationModel>> getRecommendation(RecommendationParameters parameters)async {
    final response =await Dio().get(ApiConstant.recommendationPath(parameters.id) );
   log(response.toString());

    if(response.statusCode ==200){
      return List<RecommendationModel>.from((response.data['results']as List).map((e) => RecommendationModel.fromJson(e)));
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }
}