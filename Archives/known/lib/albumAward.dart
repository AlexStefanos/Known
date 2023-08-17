import './artist.dart';
import './producer.dart';
import './composer.dart';
import './music.dart';

class AlbumAward {
  final String id;
  final String name; //name? academy? academyName?
  final List<Artist> artists;
  final DateTime realeasedYear;
  final DateTime awardYear;
  final List<Producer> producers;
  final List<Composer> composers;
  final bool win;
  final List<Music> otherNominees;

  AlbumAward({
    required this.id,
    required this.name,
    required this.artists,
    required this.realeasedYear,
    required this.awardYear,
    required this.producers,
    required this.composers,
    required this.win,
    required this.otherNominees,
  });
}
