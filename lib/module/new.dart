// import 'package:flutter/material.dart';

// class Newscreen extends StatefulWidget {
//   const Newscreen({super.key});

//   @override
//   State<Newscreen> createState() => NewscreenState();
// }

// class NewscreenState extends State<Newscreen>with TickerProviderStateMixin {
//   late final TabController _tabController;
//   late final  TabController _tabController2;

//   @override
//   void initState() {
//     _tabController = TabController(length: 4, vsync: this);
//     _tabController2 = TabController(length: 3, vsync: this);
//     super.initState();
//   }
    
//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar :AppBar(
//         title: const Text('TabBar Widget'),
//         bottom: TabBar(
//           controller: _tabController2,
//           tabs: const <Widget>[
//             Tab(
//               icon: Icon(Icons.cloud_outlined),
//             ),
//             Tab(
//               icon: Icon(Icons.beach_access_sharp),
//             ),
//             Tab(
//               icon: Icon(Icons.brightness_5_sharp),
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TabBar(
//               unselectedLabelColor: Colors.black,
//               labelColor: Colors.red,
//               tabs: const [
//                 Tab(
//                   icon: Icon(Icons.person),
//                 ),
//                 Tab(
//                   icon: Icon(
//                     Icons.add,
//                   ),
//                 ),
//                 Tab(
//                   icon: Icon(
//                     Icons.deck,
//                   ),
//                 ),
//                 Tab(
//                   icon: Icon(
//                     Icons.child_care,
//                   ),
//                 ),
//               ],
//               controller: _tabController,
//               indicatorSize: TabBarIndicatorSize.tab,
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController2,
//                 children: const <Widget>[
//                   Center(
//                     child: Text("It's cloudy here"),
//                   ),
//                   Center(
//                     child: Text("It's rainy here"),
//                   ),
//                   Center(
//                     child: Text("It's sunny here"),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController,
//                 children: const [
//                   Center(
//                     child: Text(
//                       'Screen 1',
//                     ),
//                ),
//               Center(
//                 child: Text(
//                   'Screen 2',
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   'Screen 3',
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   'Screen 4',
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   ));
//   }
// }














import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gypsybee/main.dart';

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Stack(
        children:[Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image:
                              AssetImage(
                                'assets/bc.jpeg',
                              ),
                              fit: BoxFit.cover,
                            )),
                    ),
          Scaffold(backgroundColor: Colors.transparent,
          appBar: AppBar(toolbarHeight: 250,
            elevation: 0,automaticallyImplyLeading: false,backgroundColor: Colors.transparent,
            actions: [Column(
              children: [Flexible(
                      child: Row(
                        children: [InkWell(onTap: () {
                          Navigator.pop(context);
                        },
                          child: const Icon(Icons.arrow_back)),
                          const SizedBox(width: 10,),
                          Hero(tag: 'tag',
                          child: Image.asset('assets/bc.jpeg',height: 60,)),
                        ],
                      ),
                    ),
                Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Builder(
                          builder: (context) => GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: const Icon(
                                Icons.sort_rounded,
                                // size: 30,
                              )),
                        ),
                        Container(width: 5,color: Colors.black,),
                        const SizedBox(width: 11,),
                        SizedBox(width: 200,height: 33,
                          child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.black)
                            ),  // prefixIcon:
                          ),
                         ),
                        ),
                      const SizedBox(width: 11,),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyApp()));
                      },
                        icon: const Badge(child: Icon(Icons.notifications_outlined,
                      ),)),
                    
                      ],
                    ),
                    Flexible(
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DropdownButton<String>(
                            underline: Container(
                                height: 1.5,width: 500,
                                color: Colors.grey,
                              ),
                            items: <String>['Abggffgfhhsgffgfg', 'Bhgfvjhgf', 'Cdchgfch', 'Dfghd'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                          DropdownButton<String>(underline: Container(
                                height:1.5,width: 500,
                                color: Colors.grey,
                              ),
                           items: <String>['Abggffgfhhsgffgfg', 'Bhgfvjhgf', 'Cdchgfch', 'Dfghd'].map((String value) {
                             return DropdownMenuItem<String>(
                               value: value,
                               child: Text(value),
                             );
                           }).toList(),
                           onChanged: (_) {},
                         )
                        ],
                      ),
                    ),
                ButtonsTabBar(
                  physics: const NeverScrollableScrollPhysics() ,
                                            duration: 240,
                                            elevation: 5,
                                            radius: 12,
                                            contentPadding: const EdgeInsets.symmetric(horizontal: 14),
                                            borderWidth: 0,
                                            decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: <Color>[
                                                  Color.fromARGB(255, 75, 24, 158),
                                                  Color.fromARGB(255, 77, 27, 158),
                                                  Color.fromARGB(255, 77, 27, 158),
                                                ],
                                              ),
                                            ),
                                            unselectedLabelStyle: const TextStyle(color: Colors.white),
                                            unselectedBackgroundColor: Colors.pink,
                                            labelStyle: const TextStyle(color: Colors.white,),
                                            height: 100,
                  tabs: <Widget>[
                    Tab(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [Container(height:30,width: 30 ,decoration:
                                                  const BoxDecoration(image: DecorationImage(image: AssetImage('assets/wp.jpg'),
                                                  ),),
                                                  ),
                                                    Text('Completion\n Report',style: GoogleFonts.rubik(color: Colors.white),)
                                                  ],
                                                ),
                    ),
                    Tab(
                     child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [Container(height:30,width: 30 ,decoration:
                                                  const BoxDecoration(image: DecorationImage(image:AssetImage('assets/wp.jpg'),
                                                  ),),
                                                  ),
                                                    Text('Marks\n Report',style: GoogleFonts.rubik(color: Colors.white),)
                                                  ],
                                                ),
                    ),
                    Tab(
                     child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [Container(height:30,width: 30 ,decoration:
                                                  const BoxDecoration(image: DecorationImage(image: AssetImage('assets/wp.jpg'),
                                                  ),),
                                                  ),
                                                    Text('Skill\n Report',style: GoogleFonts.rubik(color: Colors.white),)
                                                  ],
                                                ),
                    ),
                    Tab(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [Container(height:30,width: 30 ,decoration:
                                                  const BoxDecoration(image: DecorationImage(image: AssetImage('assets/wp.jpg'),
                                                  ),),
                                                  ),
                                                    Text('Child\n Report',style: GoogleFonts.rubik(color: Colors.white),)
                                                  ],
                                                ),
                    ),
                  ],
                ),
              ],
            ),]  
          ),
          body: const TabBarView(
            children: <Widget>[
              NestedTabBar('Completion'),
              NestedTabBar('Marks'),
              NestedTabBar('Skill'),
              NestedTabBar('Child'),
            ],
          ),
        ),] 
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Completed'),
            Tab(text: 'Pending'),
          ],
          labelStyle:const TextStyle(color: Colors.black),
          labelColor: Colors.black,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Container(color: Colors.transparent,
                child: GlassmorphicContainer(
                    width: MediaQuery.of(context).size.width/1.02,
                      height: MediaQuery.of(context).size.height/6,
                      borderRadius: 20,
                      blur: 5,
                      alignment: Alignment.topCenter,
                      border: 1,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFFffffff).withOpacity(0.1),
                            const Color(0xFFFFFFFF).withOpacity(0.05),
                          ],
                          stops: const[
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFffffff).withOpacity(0.5),
                          const Color((0xFFFFFFFF)).withOpacity(0.5),
                        ],
                      ),
                      
                      child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: InkWell(onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyApp()));
                           },
                             child: SizedBox(height: 100,width: MediaQuery.of(context).size.width,
                              child:   Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Flexible(child: Card(
                                        child: Padding(
                                        padding: const EdgeInsets.only(top: 8,bottom: 8,left: 25,right: 25),
                                        child: Text('L3',style: GoogleFonts.rubik(color: Colors.pink,
                                        fontSize: 15),),
                                      ))),
                                      Text('-',style: GoogleFonts.rubik( fontSize: 15)),
                                      Text('Language Introduction',style: GoogleFonts.rubik( fontSize: 15))
                                    ],
                                  ),
                                   Row(  
                                     children: [
                                       Flexible(child: Card(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Activity 1',style: GoogleFonts.rubik(color: Colors.pink,fontSize: 15),),
                                      ))),
                                      Text('-',style: GoogleFonts.rubik( fontSize: 15)),
                                      Text('Letters  A to F',style: GoogleFonts.rubik( fontSize: 15))
                                     ],
                                   ),
                                ],
                              ),
                             ),
                           ),
                         ), )
              ),
              Card( color: const Color(0x00797979),
                margin: const EdgeInsets.all(16.0),
                child: Center(
                    child: Text('${widget.outerTab}: Pending tab',)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}