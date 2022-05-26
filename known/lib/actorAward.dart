import './actor.dart';

class ActorAward {
  final String id;
  final String name; //name? academy? academyName?
  final Actor actor;
  final DateTime year;
  final String details;
  final bool win;
  final List<Actor> otherNominees;

  ActorAward({
    required this.id,
    required this.name,
    required this.actor,
    required this.year,
    required this.details,
    required this.win,
    required this.otherNominees,
  });
}
