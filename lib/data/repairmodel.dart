// To parse this JSON data, do
//
//     final searchrepairmodel = searchrepairmodelFromJson(jsonString);

import 'dart:convert';

Searchrepairmodel searchrepairmodelFromJson(String str) => Searchrepairmodel.fromJson(json.decode(str));

String searchrepairmodelToJson(Searchrepairmodel data) => json.encode(data.toJson());

class Searchrepairmodel {
    Searchrepairmodel({
        this.status,
        this.response,
        this.code,
    });

    String? status;
    List<Response>? response;
    int? code;

    factory Searchrepairmodel.fromJson(Map<String, dynamic> json) => Searchrepairmodel(
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
        this.categoryId,
        this.categoryName,
        this.subName,
        this.parentCategory,
        this.createdAt,
        this.updatedAt,
    });

    int? id;
    int? categoryId;
    dynamic categoryName;
    String? subName;
    String? parentCategory;
    String? createdAt;
    String? updatedAt;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        id: json["id"],
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        subName: json["sub_name"],
        parentCategory: json["parent_category"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "category_id": categoryId,
        "category_name": categoryName,
        "sub_name": subName,
        "parent_category": parentCategory,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
