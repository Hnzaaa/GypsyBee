// To parse this JSON data, do
//
//     final stockmodel = stockmodelFromJson(jsonString);

import 'dart:convert';

List<Stockmodel> stockmodelFromJson(String str) => List<Stockmodel>.from(json.decode(str).map((x) => Stockmodel.fromJson(x)));

String stockmodelToJson(List<Stockmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Stockmodel {
    Stockmodel({
        this.disclosureYear,
        this.disclosureDate,
        this.transactionDate,
        this.owner,
        this.ticker,
        this.assetDescription,
        this.type,
        this.amount,
        this.representative,
        this.district,
        this.state,
        this.ptrLink,
        this.capGainsOver200Usd,
        this.industry,
        this.sector,
        this.party,
    });

    int? disclosureYear;
    String? disclosureDate;
    String? transactionDate;
    String? owner;
    String? ticker;
    String? assetDescription;
    String? type;
    String? amount;
    String? representative;
    String? district;
    String? state;
    String? ptrLink;
    bool? capGainsOver200Usd;
    String? industry;
    String? sector;
    String? party;

    factory Stockmodel.fromJson(Map<String, dynamic> json) => Stockmodel(
        disclosureYear: json["disclosure_year"],
        disclosureDate: json["disclosure_date"],
        transactionDate: json["transaction_date"],
        owner: json["owner"],
        ticker: json["ticker"],
        assetDescription: json["asset_description"],
        type: json["type"],
        amount: json["amount"],
        representative: json["representative"],
        district: json["district"],
        state: json["state"],
        ptrLink: json["ptr_link"],
        capGainsOver200Usd: json["cap_gains_over_200_usd"],
        industry: json["industry"],
        sector: json["sector"],
        party: json["party"],
    );

    Map<String, dynamic> toJson() => {
        "disclosure_year": disclosureYear,
        "disclosure_date": disclosureDate,
        "transaction_date": transactionDate,
        "owner": owner,
        "ticker": ticker,
        "asset_description": assetDescription,
        "type": type,
        "amount": amount,
        "representative": representative,
        "district": district,
        "state": state,
        "ptr_link": ptrLink,
        "cap_gains_over_200_usd": capGainsOver200Usd,
        "industry": industry,
        "sector": sector,
        "party": party,
    };
}
