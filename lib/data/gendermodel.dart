// To parse this JSON data, do
//
//     final gendermodel = gendermodelFromJson(jsonString);

import 'dart:convert';

Gendermodel gendermodelFromJson(String str) =>
    Gendermodel.fromJson(json.decode(str));

String gendermodelToJson(Gendermodel data) => json.encode(data.toJson());

class Gendermodel {
  Gendermodel({
    this.count,
    this.gender,
    this.name,
    //  this.probability,
  });

  int? count;
  String? gender;
  String? name;
  //double? probability;

  factory Gendermodel.fromJson(Map<String, dynamic> json) => Gendermodel(
        count: json["count"],
        gender: json["gender"],
        name: json["name"],
        // probability: json["probability"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "gender": gender,
        "name": name,
        // "probability": probability,
      };
}
