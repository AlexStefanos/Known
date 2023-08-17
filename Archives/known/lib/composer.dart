import './producer.dart';
import './musicAward.dart';
import './album.dart';
import './artist.dart';

class Composer {
  final String id;
  final String name;
  final DateTime birthDate;
  final String birthLocation; //autre type?
  final List<Album> discography;
  final List<Artist> artistsComposedFor;
  final List<Producer> composedWithProducers;
  final List<MusicAward> awards;

  Composer({
    required this.id,
    required this.name,
    required this.birthDate,
    required this.birthLocation,
    required this.discography,
    required this.artistsComposedFor,
    required this.composedWithProducers,
    required this.awards,
  });
}
