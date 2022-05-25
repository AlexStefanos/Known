import './album.dart';
import './music.dart';

class MusicDistributionStudio {
  final String id;
  final String name;
  final DateTime creationDate;
  final List<Album> distributedAlbums;
  final List<Music> distributedMusics;

  MusicDistributionStudio({
    required this.id,
    required this.name,
    required this.creationDate,
    required this.distributedAlbums,
    required this.distributedMusics,
  });
}
