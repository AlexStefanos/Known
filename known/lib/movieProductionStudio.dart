import './movie.dart';

class MovieProductionStudio {
  final String id;
  final String name;
  final DateTime creationDate;
  final List<Movie> producedMovies;

  MovieProductionStudio({
    required this.id,
    required this.name,
    required this.creationDate,
    required this.producedMovies,
  });
}
