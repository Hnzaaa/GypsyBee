// To parse this JSON data, do
//
//     final blocmodel = blocmodelFromJson(jsonString);

import 'dart:convert';

List<Blocmodel> blocmodelFromJson(String str) => List<Blocmodel>.from(json.decode(str).map((x) => Blocmodel.fromJson(x)));

String blocmodelToJson(List<Blocmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Blocmodel {
    Blocmodel({
     //   this.domains,
        this.country,
        this.alphaTwoCode,
     //   this.webPages,
        this.stateProvince,
        this.name,
    });

   // List<String>? domains;
    String? country;
    String? alphaTwoCode;
    // List<String>? webPages;
    String? stateProvince;
    String? name;

    factory Blocmodel.fromJson(Map<String, dynamic> json) => Blocmodel(
    //    domains: List<String>.from(json["domains"].map((x) => x)),
        country: json["country"],
        alphaTwoCode: json["alpha_two_code"],
    //    webPages: List<String>.from(json["web_pages"].map((x) => x)),
        stateProvince: json["state-province"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
      //  "domains": List<dynamic>.from(domains!.map((x) => x)),
        "country": country,
        "alpha_two_code": alphaTwoCode,
      //  "web_pages": List<dynamic>.from(webPages!.map((x) => x)),
        "state-province": stateProvince,
        "name": name,
    };
}
