import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget {
  Widget categorygrid({
    required String image,
    required String title,
    required String brand,
    required String price,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ 
          Container(// ignore: sized_box_for_whitespace
            height: 120,
            width: 140,
            child: Image.network( image, fit: BoxFit.fitHeight,
            ),
          ),
          Center( 
             child: Container(// ignore: sized_box_for_whitespace
              width: 70,
              child: Text( title,       
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Text( brand, style: const TextStyle(color: Colors.grey, fontSize: 10),
          ),
          Text( price, style: const TextStyle( fontWeight: FontWeight.bold,
                color: Colors.orange,
                fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class ServiceWidget{
  Widget servicegrid({
     required String icon,
     required String subject,
     required String id,
  }){
    return Column(
      children: [
        Container(// ignore: sized_box_for_whitespace
            height: 60,
            width: 60,color: const Color.fromARGB(255, 193, 220, 241),
            child: Image.network( icon, fit: BoxFit.contain,
            ),
          ),
        Text(subject, overflow: TextOverflow.ellipsis,style: const TextStyle(color: Color.fromARGB(255, 17, 95, 158),fontSize: 15, ))
      ],
    );
  }
}

class Cosmeticwidget{
  Widget cosmeticgrid({
    required String brand,
    required String name, 
    required String price,
  }){
    return Column(
      children: [ 
        Text(brand),
        Text(name),
        Text(price),
      ],
    );
  }
}
 