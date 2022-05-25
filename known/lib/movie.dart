import './movieAward.dart';
import './crewMember.dart';
import './actor.dart';
import './movieDistributionStudio.dart';
import './movieProductionStudio.dart';

class Movie {
  final String id;
  final String title;
  final DateTime releasedYear;
  final String directors;
  final List<Actor> actorsHeadliners;
  final int filmLength;
  final Map<CrewMember, String> writers;
  final List<CrewMember> photographers;
  final List<CrewMember> musicians;
  final List<String> genres;
  final List<String> languages;
  final List<String> filmedLocations;
  final List<MovieDistributionStudio> distributionStudios;
  final List<MovieProductionStudio> productionStudios;
  final double budget;
  final double boxOffice;
  final List<MovieAward> awards;
  final List<String> soundtrackLinks; //autre type?
  final List<Actor> allCast;
  final List<CrewMember> allCrew;

  Movie({
    required this.id,
    required this.title,
    required this.releasedYear,
    required this.directors,
    required this.actorsHeadliners,
    required this.filmLength,
    required this.writers,
    required this.photographers,
    required this.musicians,
    required this.genres,
    required this.languages,
    required this.filmedLocations,
    required this.distributionStudios,
    required this.productionStudios,
    required this.budget,
    required this.boxOffice,
    required this.awards,
    required this.soundtrackLinks,
    required this.allCast,
    required this.allCrew,
  });
}
