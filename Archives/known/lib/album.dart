import './artist.dart';
import './composer.dart';
import './producer.dart';
import './musicDistributionStudio.dart';

class Album {
  final String id;
  final String name;
  final List<Artist> artists;
  final DateTime releasedYear;
  final List<Artist> featurings;
  final List<Producer> producers;
  final List<Composer> composers;
  final List<String> genres; //autre type?
  final MusicDistributionStudio distributionStudio;

  Album({
    required this.id,
    required this.name,
    required this.artists,
    required this.releasedYear,
    required this.featurings,
    required this.producers,
    required this.composers,
    required this.genres,
    required this.distributionStudio,
  });
}
