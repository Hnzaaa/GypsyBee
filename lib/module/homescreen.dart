import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gypsybee/module/categoryscreen.dart';
import 'package:gypsybee/module/leaderboard.dart';

import 'drawerscreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget spacer({required double height}) {
      return SizedBox(height: height);
    }

    return Scaffold(
      backgroundColor: Image.asset('assets/img.jpg').color,
      endDrawer: const DrawerScreen(),
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Icon(Icons.list),
      //     )
      //   ],
      //   title: Text(widget.title),
      // ),
      body: Stack(
        children: [
          CarouselSlider(  
            items: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/bc.jpeg',
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/ab.jpeg',
                      ),
                      fit: BoxFit.fill,
                    )),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/de.jpg',
                      ),
                      fit: BoxFit.fill,
                    )),
              ),
            ],
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              animateToClosest: true,
              enlargeCenterPage: false, 
              scrollDirection: Axis.vertical,
              autoPlay: true,
              // aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/log.png',
                            height: 35,
                            width: 50,
                          ),
                          Text(
                            'GypsyBee',
                            style: GoogleFonts.abrilFatface(
                              color: const Color.fromARGB(255, 47, 47, 54),
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      Builder(
                        builder: (context) => GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                            child: const Icon(
                              Icons.menu_rounded,
                              size: 30,
                            )),
                      ),
                    ],
                  ),
                ),
                spacer(height: 20),
                const SizedBox(
                  height: 200,
                ),
                const Text(
                  'WOMEN\'S',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                spacer(height: 8),
                InkWell(
                  child: Text(
                    'CLOTHES',
                    style: GoogleFonts.archivo(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  onTap: () => {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (
                      context)=> const Leadershipscreen()
                     ) 
                   )   
                  },
                ),
                spacer(height: 18),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CategoryScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                    ),
                    child: const Text(
                      'SEE MORE',
                      style: TextStyle(color: Colors.white),
                    )),
                    spacer(height: 28),
                    DotsIndicator(axis: Axis.vertical,
                        dotsCount: 3,
                        position: 1,
                        decorator: const DotsDecorator(
                        color: Colors.black, // Inactive color
                        activeColor: Colors.orange,
                        spacing: EdgeInsets.all(15),size: Size.fromRadius(5),
                        ),
                     )
              ],
            ),
          ), 
        ], 
      ),
    );
  }
}
