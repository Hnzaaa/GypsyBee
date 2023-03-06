// To parse this JSON data, do
//
//     final servicemodel = servicemodelFromJson(jsonString);

import 'dart:convert';

Servicemodel servicemodelFromJson(String str) => Servicemodel.fromJson(json.decode(str));

String servicemodelToJson(Servicemodel data) => json.encode(data.toJson());

class Servicemodel {
    Servicemodel({
        this.status,
        this.response,
        this.code,
    });

    String? status;
    List<Response>? response;
    int? code;

    factory Servicemodel.fromJson(Map<String, dynamic> json) => Servicemodel(
        status: json["status"],
        response: List<Response>.from(json["response"].map((x) => Response.fromJson(x))),
        code: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "response": List<dynamic>.from(response!.map((x) => x.toJson())),
        "code": code,
    };
}

class Response {
    Response({
        this.id,
        this.type,
        this.value,
        this.icons,
        this.sortOrder,
        this.status,
        this.createdAt,
        this.updatedAt,
    });

    int? id;
    String? type;
    String? value;
    String? icons;
    int? sortOrder;
    int? status;
    String? createdAt;
    String? updatedAt;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        id: json["id"],
        type: json["type"],
        value: json["value"],
        icons: json["icons"],
        sortOrder: json["sort_order"],
        status: json["status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "value": value,
        "icons": icons,
        "sort_order": sortOrder,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
