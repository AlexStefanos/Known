import './movie.dart';

class CrewMember {
  final String id;
  final String name;
  final List<Movie> filmography;

  CrewMember({
    required this.id,
    required this.name,
    required this.filmography,
  });
}
