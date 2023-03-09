import 'package:flutter/cupertino.dart';
import 'package:gypsybee/data/agemodel.dart';
import 'package:gypsybee/data/ageprovider.dart';
import 'package:gypsybee/data/blocmodel.dart';
import 'package:gypsybee/data/categorymodel.dart';
import 'package:gypsybee/data/drinksmodel.dart';
import 'package:gypsybee/data/repairmodel.dart';
import 'package:gypsybee/data/repairprovider.dart';
import 'package:gypsybee/data/servicemodel.dart';
import 'package:gypsybee/data/serviceprovider.dart';
import 'package:gypsybee/data/stockmodel.dart';
import 'package:gypsybee/data/stockprovider.dart';
import 'package:gypsybee/data/usdatamodel.dart';
import 'package:gypsybee/data/usdataprovider.dart';
import 'blocprovider.dart';
import 'categoryprovider.dart';
import 'cosmeticmodel.dart';
import 'cosmeticprovider.dart';
import 'drinksprovider.dart';
import 'findvendormodel.dart';
import 'findvendorprovider.dart';
import 'gendermodel.dart';
import 'genderprovider.dart';
import 'knotmodel.dart';
import 'knotprovider.dart';


class Repository {
  var categoryprovider = CategoryProvider();
  var genderprovider = GenderProvider();
  var ageprovider = AgeProvider();
  var blocprovider = BlocProvider();
  var usdataprovider= UsdataProvider();
  var getdrinkprovider= DrinksProvider();
  var getknotprovider= KnotProvider();
  var getserviceprovider= Serviceprovider();
  var getrepairprovider=Repairprovider();
  var getcosmeticsprovider=CosmeticProvider();
  var getstockprovider=StockProvider();
  var getvendorprovider=FindvendorProvider();

  Future<Categorymodel> getcategoryab({required String url}) =>
      categoryprovider.getcategory(url);

  Future<Gendermodel> getgenderab({required String url, required String name}) =>
      genderprovider.getgender(url: url, name: name);

  Future<Agemodel> getageab({required String url, required String name}) =>
      ageprovider.getage(url: url, name: name);

  Future<List<Blocmodel>> getblocab() => blocprovider.getbloc();


  Future<Usmodel> getdataab({  required String url,required String drilldowns, required String measures}) =>
      usdataprovider.getdata(  url: url, drilldownss: drilldowns, measures: measures);

  Future<Drinksmodel> getdrinkab({required String url }) =>
      getdrinkprovider.getdrink(url: url );

  Future<Knotmodel> getknotab({required String url}) =>
      getknotprovider.getknot(url);

  Future<Servicemodel>getserviceab({required String  url}) =>getserviceprovider.getservice(url); 
      
  Future<Searchrepairmodel>getrepairab({required String url,required String id, required String sub_name})=>
  getrepairprovider.getrepair(url: url, id:id, sub_name:sub_name);

  Future<List<Cosmeticmodel>> getcosmeticsab()=>getcosmeticsprovider.getcosmetics();

  Future<List<Stockmodel>> getstockab()=>getstockprovider.getstock();

  Future<Findvendormodel> getvendorab({required String url})=>getvendorprovider.getvendor(url: url);

  }
  
 