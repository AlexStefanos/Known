import './movie.dart';
import './movieAward.dart';

class Actor {
  final String id;
  final String name;
  final DateTime birthDate;
  final String birthLocation; //autre type?
  final String biography;
  final List<Movie> filmography;
  final List<MovieAward> awards;

  Actor({
    required this.id,
    required this.name,
    required this.birthDate,
    required this.birthLocation,
    required this.biography,
    required this.filmography,
    required this.awards,
  });
}
