// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'drawerscreen.dart';

class Newscreen extends StatefulWidget {
  const Newscreen({super.key});

  @override
  State<Newscreen> createState() => NewscreenState();
}

class NewscreenState extends State<Newscreen> {
  
  // String? colour;
    
  @override
  Widget build(BuildContext context) {
    Widget spacer({required double height}) {
      return SizedBox(height: height);
    } 
    return Scaffold(
      endDrawer: const DrawerScreen(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'GypsyBee',
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          Builder(
            builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu_rounded,
                    size: 30,
                  ),
                )),
          ),
        ],
      ),
      body:  
      Padding(
        padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Stack(
              children: [  
               Card(
                  elevation: 10,
                  color:   Colors.white,
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                   height: 160,
                    child: ListView.builder(
                     itemBuilder: (BuildContext context, int index) {  
                     return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        spacer(height: 2), 
                        const Padding(
                          padding: EdgeInsets.only(left: 80), 
                          child: Text(
                            'name',
                            style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 22, 104, 170)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left:80.0),
                          child: Text(
                            'job',
                            style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 24, 105, 172)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Row( 
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                               Icon(Icons.location_on,color: Colors.blue,),
                               Text(       
                                  'city',
                                  style:  TextStyle(fontSize: 20,
                                  color: Color.fromARGB(255, 25, 113, 185)),
                                ),
                             ],
                           ),
                        ), 
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children:   const [
                           Text(
                             'image1',
                             style:  TextStyle(fontSize: 20,color: Colors.black),
                           ),
                           Text(
                             'image2',
                             style: TextStyle(fontSize: 20,color: Colors.black),
                           ),
                           Text(
                             'image3',
                             style: TextStyle(fontSize: 20,color: Colors.black),
                           ),
                           Text(
                             'image4',
                             style: TextStyle(fontSize: 20,color: Colors.black),
                           ),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: const [
                               Icon(Icons.phone,color: Colors.blue,),
                               Text(
                                 '  9446763107',
                                 style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 22, 106, 175)),
                               ),
                             ],
                           ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: OutlinedButton(
                                     onPressed: () {},
                                     style: OutlinedButton.styleFrom(
                                       shape: const StadiumBorder(),side: const BorderSide(color: Colors.blue)
                                     ),
                                     child: const Text('Call',
                                     style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 22, 106, 175)),),
                            ),
                          )
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                             children: const [
                               Icon(Icons.mail,color: Colors.blue,),
                               Text(
                                 '  hnza@gmail.com',
                                 style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 26, 117, 190)),
                               ),
                             ],
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [Icon(Icons.lock_open),
                            Text('data'),],
                            )
                          ],
                         );
                       }, 
                     ),
                   ),
                  ),
                  const CircleAvatar(
                         radius: 35,
                       ), 
            ]
         )
       )
     )
    );
  }
}
