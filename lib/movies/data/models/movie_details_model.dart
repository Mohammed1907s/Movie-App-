import 'package:clean_arch/movies/data/models/genres_model.dart';
import 'package:clean_arch/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel(
      {required super.backdropPath,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runtime,
      required super.title,
      required super.genres,
      required super.voteAverage});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
          id: json['id'],
          title: json['title'],
          backdropPath: json['backdrop_path'],
          overview: json['overview'],
          voteAverage: json['vote_average'].toDouble(),
          releaseDate: json['release_date'],
          runtime: json['runtime'],
          genres: List<GenresModel>.from(
              json['genres'].map((x) => GenresModel.fromJson(x))));
}
