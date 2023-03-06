// To parse this JSON data, do
//
//     final cosmeticmodel = cosmeticmodelFromJson(jsonString);

import 'dart:convert';

List<Cosmeticmodel> cosmeticmodelFromJson(String str) => List<Cosmeticmodel>.from(json.decode(str).map((x) => Cosmeticmodel.fromJson(x)));

String cosmeticmodelToJson(List<Cosmeticmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cosmeticmodel {
    Cosmeticmodel({
        this.id,
        this.brand,
        this.name,
        this.price,
        this.priceSign,
        this.currency,
        this.imageLink,
        this.productLink,
        this.websiteLink,
        this.description,
        this.rating,
        this.category,
        this.productType,
        this.tagList,
        this.createdAt,
        this.updatedAt,
        this.productApiUrl,
        this.apiFeaturedImage,
        this.productColors,
    });

    int? id;
    String? brand;
    String? name;
    String? price;
    dynamic priceSign;
    dynamic currency;
    String? imageLink;
    String? productLink;
    String? websiteLink;
    String? description;
    double? rating;
    String? category;
    String? productType;
    List<dynamic>? tagList;
    String? createdAt;
    String? updatedAt;
    String? productApiUrl;
    String? apiFeaturedImage;
    List<ProductColor>? productColors;

    factory Cosmeticmodel.fromJson(Map<String, dynamic> json) => Cosmeticmodel(
        id: json["id"],
        brand: json["brand"],
        name: json["name"],
        price: json["price"],
        priceSign: json["price_sign"],
        currency: json["currency"],
        imageLink: json["image_link"],
        productLink: json["product_link"],
        websiteLink: json["website_link"],
        description: json["description"],
        rating: json["rating"].toDouble(),
        category: json["category"],
        productType: json["product_type"],
        tagList: List<dynamic>.from(json["tag_list"].map((x) => x)),
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        productApiUrl: json["product_api_url"],
        apiFeaturedImage: json["api_featured_image"],
        productColors: List<ProductColor>.from(json["product_colors"].map((x) => ProductColor.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "brand": brand,
        "name": name,
        "price": price,
        "price_sign": priceSign,
        "currency": currency,
        "image_link": imageLink,
        "product_link": productLink,
        "website_link": websiteLink,
        "description": description,
        "rating": rating,
        "category": category,
        "product_type": productType,
        "tag_list": List<dynamic>.from(tagList!.map((x) => x)),
        "created_at": createdAt,
        "updated_at": updatedAt,
        "product_api_url": productApiUrl,
        "api_featured_image": apiFeaturedImage,
        "product_colors": List<dynamic>.from(productColors!.map((x) => x.toJson())),
    };
}

class ProductColor {
    ProductColor({
        this.hexValue,
        this.colourName,
    });

    String? hexValue;
    String? colourName;

    factory ProductColor.fromJson(Map<String, dynamic> json) => ProductColor(
        hexValue: json["hex_value"],
        colourName: json["colour_name"],
    );

    Map<String, dynamic> toJson() => {
        "hex_value": hexValue,
        "colour_name": colourName,
    };
}
