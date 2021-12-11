import 'package:flutter/material.dart';

//clase que sirve de dataclass. no hay dataclasses en dart. un dataclass es como una tupla/struct
class TripData {
  final String authorUser = "Ferran";  //var??
  String title = "Milano skyscraper tour";
  String place = "Milano, Italy";
  String description = "this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip";
  late Image previewPic;

  TripData(/*this.authorUser, this.title*/);
}