import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gypsybee/module/homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  StateSplashScreen createState()=>StateSplashScreen();
}

class StateSplashScreen extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor:Colors.transparent,
    ));

    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;

    Future.delayed(const Duration(seconds: 3)).then((value) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
     var accessToken = prefs.getString('accessToken');

     print('accessToken$accessToken');
     if(accessToken==null){
       Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (BuildContext context) => const MyHomePage()));
     }else{
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const MyHomePage()));
     } 
    }
  );
    return Scaffold(
      body: Image.asset('assets/splash.jpeg',height: height,width: width,fit: BoxFit.fill,),
    );
  }

}