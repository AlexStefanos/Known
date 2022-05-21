import 'package:flutter/material.dart';

class Movie {
  final String id;
  final String name;
  final int date, boxOffice, budget;
  final bool known;

  const Movie(
      {this.id, this.name, this.date, this.boxOffice, this.budget, this.known});
}
