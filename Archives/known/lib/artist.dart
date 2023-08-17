import './albumAward.dart';
import './musicAward.dart';
import './album.dart';

class Artist {
  final String id;
  final String name;
  final DateTime birthDate;
  final String birthLocation; //autre type?
  final String biography;
  final List<Album> discography;
  final List<AlbumAward> albumAwards;
  final List<MusicAward> musicAwards;

  Artist({
    required this.id,
    required this.name,
    required this.birthDate,
    required this.birthLocation,
    required this.biography,
    required this.discography,
    required this.albumAwards,
    required this.musicAwards,
  });
}
