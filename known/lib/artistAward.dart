import './artist.dart';

class ArtistAward {
  final String id;
  final String name; //name? academy? academyName?
  final Artist artist;
  final DateTime year;
  final String details;
  final bool win;
  final List<Artist> otherNominees;

  ArtistAward({
    required this.id,
    required this.name,
    required this.artist,
    required this.year,
    required this.details,
    required this.win,
    required this.otherNominees,
  });
}
