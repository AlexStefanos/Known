import './movie.dart';

class MovieDistributionStudio {
  final String id;
  final String name;
  final DateTime creationDate;
  final List<Movie> distributedMovies;

  MovieDistributionStudio({
    required this.id,
    required this.name,
    required this.creationDate,
    required this.distributedMovies,
  });
}
