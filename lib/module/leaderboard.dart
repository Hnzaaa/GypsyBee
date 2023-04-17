// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Leadershipscreen extends StatefulWidget{
  const Leadershipscreen({super.key});
 
  @override
  State<Leadershipscreen> createState() => LeadershipscreenState();
 
}

class LeadershipscreenState  extends State<Leadershipscreen>{ 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('minitoe',style: TextStyle(color: Colors.white),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.info_outline,color: Colors.white,),
                Icon(Icons.notifications_outlined,color: Colors.white,),
                Icon(Icons.person_outline,color: Colors.white,),
              ],
            )
          ],
        ),
      ),
      body: Stack(
          children:[ CustomScrollView(
               slivers: <Widget>[ 
           SliverAppBar(
             elevation: 6,
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: Colors.orange,
            automaticallyImplyLeading: false, 
            expandedHeight: 250.0, 
           flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            expandedTitleScale: 2,
              background:  SingleChildScrollView(
                child: Column(
                  children: [
                    Text('Sales',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,fontWeight: FontWeight.bold
                     ),
                     textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15,),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Container(
                         alignment: Alignment.topCenter,
                         height: MediaQuery.of(context).size.height*.25,
                         width: MediaQuery.of(context).size.width*.25,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(
                           Radius.circular(40)
                           ),
                           border: Border.all(color: Colors.white),
                           shape: BoxShape.rectangle,
                           color: Colors.white),
                          child: Stack(
                            children: [
                             Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: CircleAvatar( radius: 40,
                               backgroundColor: Color.fromARGB(255, 224, 223, 223),
                               child: Icon(Icons.person,color: Colors.grey,size: 75,),
                               ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: CircleAvatar( 
                                backgroundColor: Colors.blue,radius: 14,
                              child: Text('2',  
                               style: TextStyle(fontSize: 12,color: Colors.white),),
                              ),
                            )
                           ]
                          ),
                        ),
                        Container(
                         alignment: Alignment.topCenter,
                         height: MediaQuery.of(context).size.height*.30,
                         width: MediaQuery.of(context).size.width*.25,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(
                           Radius.circular(40)
                          ),
                           border: Border.all(color: Colors.white),
                           shape: BoxShape.rectangle,
                           color: Colors.white),
                           child: Stack(
                            children: [
                             Padding(
                              padding: const EdgeInsets.all(6.0),
                               child: CircleAvatar( radius: 40,
                               backgroundColor: Color.fromARGB(255, 224, 223, 223),
                               child: Icon(Icons.person,color: Colors.grey,size: 75,),
                               ),
                            ),
                            Align(
                             alignment: Alignment.center,
                             child: CircleAvatar( backgroundColor: Colors.blue,radius: 14,
                               child: Text('1', style: TextStyle(fontSize: 12,color: Colors.white),),
                              ),
                             )
                            ]
                          ),
                        ),
                        Container(
                         alignment: Alignment.topCenter,
                         height: MediaQuery.of(context).size.height*.25,
                         width: MediaQuery.of(context).size.width*.25,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(
                           Radius.circular(40)
                          ),
                           border: Border.all(color: Colors.white),
                           shape: BoxShape.rectangle,
                           color: Colors.white),
                          child: Stack(
                            children: [
                             Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: CircleAvatar( radius: 40,
                               backgroundColor: Color.fromARGB(255, 224, 223, 223),
                               child: Icon(Icons.person,color: Colors.grey,size: 75,),
                               ),
                             ),
                             Align(
                              alignment: Alignment.center,
                                    child: CircleAvatar( backgroundColor: Colors.blue,radius: 14,
                                      child: Text('3', style: TextStyle(fontSize: 12,color: Colors.white),),
                                  ),
                               )
                           ]
                          ),
                        ),
                      ],
                    ),
                      
                 ],
                ),
              ),
            ),
           ), 
            SliverFillRemaining(
              child: Container(),
            )
            ]
          ), 
         ]
      ) 
    );
  }
}