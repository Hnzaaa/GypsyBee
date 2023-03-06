// To parse this JSON data, do
//
//     final agemodel = agemodelFromJson(jsonString);

import 'dart:convert';

Agemodel agemodelFromJson(String str) => Agemodel.fromJson(json.decode(str));

String agemodelToJson(Agemodel data) => json.encode(data.toJson());

class Agemodel {
  Agemodel({
    this.age,
    this.count,
    this.name,
  });

  int? age;
  int? count;
  String? name;

  factory Agemodel.fromJson(Map<String, dynamic> json) => Agemodel(
        age: json["age"],
        count: json["count"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "age": age,
        "count": count,
        "name": name,
      };
}
