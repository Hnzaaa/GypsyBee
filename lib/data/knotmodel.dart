// To parse this JSON data, do
//
//     final knotmodel = knotmodelFromJson(jsonString);

import 'dart:convert';

Knotmodel knotmodelFromJson(String str) => Knotmodel.fromJson(json.decode(str));

String knotmodelToJson(Knotmodel data) => json.encode(data.toJson());

class Knotmodel {
    Knotmodel({
        this.month,
        this.num,
        this.link,
        this.year,
        this.news,
        this.safeTitle,
        this.transcript,
        this.alt,
        this.img,
        this.title,
        this.day,
    });

    String? month;
    int? num;
    String? link;
    String? year;
    String? news;
    String? safeTitle;
    String? transcript;
    String? alt;
    String? img;
    String? title;
    String? day;

    factory Knotmodel.fromJson(Map<String, dynamic> json) => Knotmodel(
        month: json["month"],
        num: json["num"],
        link: json["link"],
        year: json["year"],
        news: json["news"],
        safeTitle: json["safe_title"],
        transcript: json["transcript"],
        alt: json["alt"],
        img: json["img"],
        title: json["title"],
        day: json["day"],
    );

    Map<String, dynamic> toJson() => {
        "month": month,
        "num": num,
        "link": link,
        "year": year,
        "news": news,
        "safe_title": safeTitle,
        "transcript": transcript,
        "alt": alt,
        "img": img,
        "title": title,
        "day": day,
    };
}
