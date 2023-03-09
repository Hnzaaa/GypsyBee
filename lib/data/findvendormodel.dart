// To parse this JSON data, do
//
//     final findvendormodel = findvendormodelFromJson(jsonString);

import 'dart:convert';

Findvendormodel findvendormodelFromJson(String str) => Findvendormodel.fromJson(json.decode(str));

String findvendormodelToJson(Findvendormodel data) => json.encode(data.toJson());

class Findvendormodel {
    Findvendormodel({
        this.status,
        this.response,
        this.code,
    });

    String? status;
    List<Response>? response;
    int? code;

    factory Findvendormodel.fromJson(Map<String, dynamic> json) => Findvendormodel(
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
        this.userId,
        this.userType,
        this.industryType,
        this.foundedDate,
        this.website,
        this.responseClass,
        this.diploma,
        this.pg,
        this.phd,
        this.experience,
        this.formerCompany,
        this.designation,
        this.designationFrom,
        this.designationTo,
        this.language,
        this.industry,
        this.subIndustry,
        this.about,
        this.skill,
        this.service,
        this.subService,
        this.picture1,
        this.picture2,
        this.picture3,
        this.picture4,
        this.resumeFile,
        this.aboutMyskill,
        this.createdAt,
        this.updatedAt,
        this.user,
        this.qualifications,
    });

    int? id;
    int? userId;
    dynamic userType;
    dynamic industryType;
    dynamic foundedDate;
    dynamic website;
    String? responseClass;
    String? diploma;
    String? pg;
    String? phd;
    dynamic experience;
    String? formerCompany;
    String? designation;
    String? designationFrom;
    String? designationTo;
    String? language;
    String? industry;
    String? subIndustry;
    String? about;
    String? skill;
    String? service;
    String? subService;
    String? picture1;
    String? picture2;
    String? picture3;
    String? picture4;
    String? resumeFile;
    String? aboutMyskill;
    String? createdAt;
    String? updatedAt;
    User? user;
    Qualifications? qualifications;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        id: json["id"],
        userId: json["user_id"],
        userType: json["user_type"],
        industryType: json["industry_type"],
        foundedDate: json["founded_date"],
        website: json["website"],
        responseClass: json["class"],
        diploma: json["diploma"],
        pg: json["pg"],
        phd: json["phd"],
        experience: json["experience-"],
        formerCompany: json["former_company"],
        designation: json["designation"],
        designationFrom: json["designation_from"],
        designationTo: json["designation_to"],
        language: json["language"],
        industry: json["industry"],
        subIndustry: json["sub_industry"],
        about: json["about"],
        skill: json["skill"],
        service: json["service"],
        subService: json["sub_service"],
        picture1: json["picture_1"],
        picture2: json["picture_2"],
        picture3: json["picture_3"],
        picture4: json["picture_4"],
        resumeFile: json["resume_file"],
        aboutMyskill: json["about_myskill"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        user: User.fromJson(json["user"]),
        qualifications: Qualifications.fromJson(json["qualifications"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "user_type": userType,
        "industry_type": industryType,
        "founded_date": foundedDate,
        "website": website,
        "class": responseClass,
        "diploma": diploma,
        "pg": pg,
        "phd": phd,
        "experience-": experience,
        "former_company": formerCompany,
        "designation": designation,
        "designation_from": designationFrom,
        "designation_to": designationTo,
        "language": language,
        "industry": industry,
        "sub_industry": subIndustry,
        "about": about,
        "skill": skill,
        "service": service,
        "sub_service": subService,
        "picture_1": picture1,
        "picture_2": picture2,
        "picture_3": picture3,
        "picture_4": picture4,
        "resume_file": resumeFile,
        "about_myskill": aboutMyskill,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "user": user!.toJson(),
        "qualifications": qualifications! .toJson(),
    };
}

class Qualifications {
    Qualifications({
        this.diploma,
        this.phd,
        this.formerCompany,
        this.designation,
        this.designationFrom,
        this.designationTo,
        this.pg,
    });

    List<String>? diploma;
    List<String>? phd;
    List<String>? formerCompany;
    List<String>? designation;
    List<String>? designationFrom;
    List<String>? designationTo;
    List<String>? pg;

    factory Qualifications.fromJson(Map<String, dynamic> json) => Qualifications(
        diploma: List<String>.from(json["diploma"].map((x) => x)),
        phd: List<String>.from(json["phd"].map((x) => x)),
        formerCompany: List<String>.from(json["former_company"].map((x) => x)),
        designation: List<String>.from(json["designation"].map((x) => x)),
        designationFrom: List<String>.from(json["designation_from"].map((x) => x)),
        designationTo: List<String>.from(json["designation_to"].map((x) => x)),
        pg: List<String>.from(json["pg"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "diploma": List<dynamic>.from(diploma!.map((x) => x)),
        "phd": List<dynamic>.from(phd!.map((x) => x)),
        "former_company": List<dynamic>.from(formerCompany!.map((x) => x)),
        "designation": List<dynamic>.from(designation!.map((x) => x)),
        "designation_from": List<dynamic>.from(designationFrom!.map((x) => x)),
        "designation_to": List<dynamic>.from(designationTo!.map((x) => x)),
        "pg": List<dynamic>.from(pg!.map((x) => x)),
    };
}

class User {
    User({
        this.id,
        this.userType,
        this.name,
        this.lastName,
        this.gender,
        this.dob,
        this.age,
        this.email,
        this.emailStatus,
        this.emailVerifiedAt,
        this.phone,
        this.place,
        this.state,
        this.city,
        this.address,
        this.pincode,
        this.avatar,
        this.otp,
        this.status,
        this.acVerify,
        this.accountPrivacy,
        this.firebaseToken,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    int? id;
    String? userType;
    String? name;
    String? lastName;
    String? gender;
    DateTime? dob;
    String? age;
    String? email;
    int? emailStatus;
    dynamic emailVerifiedAt;
    String? phone;
    dynamic place;
    String? state;
    String? city;
    String? address;
    int? pincode;
    String? avatar;
    dynamic otp;
    int? status;
    dynamic acVerify;
    int? accountPrivacy;
    String? firebaseToken;
    String? createdAt;
    String? updatedAt;
    dynamic deletedAt;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        userType: json["user_type"],
        name: json["name"],
        lastName: json["last_name"],
        gender: json["gender"],
        dob: DateTime.parse(json["dob"]),
        age: json["age"],
        email: json["email"],
        emailStatus: json["email_status"],
        emailVerifiedAt: json["email_verified_at"],
        phone: json["phone"],
        place: json["place"],
        state: json["state"],
        city: json["city"],
        address: json["address"],
        pincode: json["pincode"],
        avatar: json["avatar"],
        otp: json["otp"],
        status: json["status"],
        acVerify: json["ac_verify"],
        accountPrivacy: json["account_privacy"],
        firebaseToken: json["firebase_token"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_type": userType,
        "name": name,
        "last_name": lastName,
        "gender": gender,
        "dob": "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
        "age": age,
        "email": email,
        "email_status": emailStatus,
        "email_verified_at": emailVerifiedAt,
        "phone": phone,
        "place": place,
        "state": state,
        "city": city,
        "address": address,
        "pincode": pincode,
        "avatar": avatar,
        "otp": otp,
        "status": status,
        "ac_verify": acVerify,
        "account_privacy": accountPrivacy,
        "firebase_token": firebaseToken,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
    };
}
