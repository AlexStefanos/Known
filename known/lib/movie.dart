import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';

class Movie {
  final ObjectId id;
  final String name;
  final int date, boxOffice, budget;
  final bool known;

  const Movie(
      {this.id, this.name, this.date, this.boxOffice, this.budget, this.known});
}
