import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gypsybee/main.dart';
import 'drawerscreen.dart';
import 'blocscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Makeupscreen extends StatefulWidget{
  const Makeupscreen({super.key});

  @override
  State<Makeupscreen> createState() => MakeupscreenState();
}

class MakeupscreenState  extends State<Makeupscreen>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text('Cosmetics',style: GoogleFonts.abel(
                  color: const Color.fromARGB(255, 90, 65, 12),
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),),)  , 
    body: Container(color: Colors.amber ,
      height: MediaQuery.of(context).size.height,
      width: 500,
    ),
   );
  }
} 