import './album.dart';
import './artist.dart';
import './musicAward.dart';
import './composer.dart';
import './albumAward.dart';

class Producer {
  final String id;
  final String name;
  final DateTime birthDate;
  final String birthLocation; //autre type?
  final List<Album> discography;
  final List<Artist> producedFor;
  final List<Composer> composerWithProduced;
  final List<MusicAward> musicAwards;
  final List<AlbumAward> albumAwards;

  Producer({
    required this.id,
    required this.name,
    required this.birthDate,
    required this.birthLocation,
    required this.discography,
    required this.producedFor,
    required this.composerWithProduced,
    required this.musicAwards,
    required this.albumAwards,
  });
}
