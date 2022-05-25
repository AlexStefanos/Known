import './movie.dart';

class MovieAward {
  final String id;
  final String name; //name? academy? academyName?
  final Movie movieName;
  final DateTime movieReleasedYear;
  final DateTime awardYear;
  final bool win;
  final List<Movie> otherNominees;

  MovieAward({
    required this.id,
    required this.name,
    required this.movieName,
    required this.movieReleasedYear,
    required this.awardYear,
    required this.win,
    required this.otherNominees,
  });
}
