

class ApiConstant{
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '4ccd25f282e8d2975c684bd61d477469';
  static const String nowPlaying = '/movie/now_playing';


  static const String nowPlayingMoviePath='$baseUrl$nowPlaying?api_key=$apiKey';
  static const String popularMoviePath='$baseUrl/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesPath='$baseUrl/movie/top_rated?api_key=$apiKey';
  static  String movieDetailsPath(int movieId )=>'$baseUrl/movie/$movieId?api_key=$apiKey';
  static  String recommendationPath(int movieId )=>'$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) =>'$baseImageUrl$path';



}