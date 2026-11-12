import 'dart:ui';

import 'package:space/core/models/planet_fact_model.dart';

class PlanetModel {
  final String name;
  final String image;
  final String buttonText;
  final String model3d;
  final String about;
  final String title;
  final List<PlanetFactModel> facts;

  PlanetModel({
    required this.name,
    required this.image,
    required this.buttonText,
    required this.model3d,
    required this.about,
    required this.title,
    required this.facts,
  });

}