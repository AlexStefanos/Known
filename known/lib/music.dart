import './album.dart';
import './artist.dart';
import './producer.dart';
import './composer.dart';
import './musicDistributionStudio.dart';

class Music {
  final String id;
  final String name;
  final List<Artist> artists;
  final DateTime releasedYear;
  final List<Artist> featurings;
  final List<Producer> producers;
  final List<Composer> composers;
  final bool isSingle;
  final Album albumName;
  final List<String> genres; //autre type?
  final MusicDistributionStudio distributionStudio;

  Music({
    required this.id,
    required this.name,
    required this.artists,
    required this.releasedYear,
    required this.featurings,
    required this.producers,
    required this.composers,
    required this.isSingle,
    required this.albumName,
    required this.genres,
    required this.distributionStudio,
  });
}
