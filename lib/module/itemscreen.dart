// import 'dart:html';

// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:gypsybee/data/categorymodel.dart';

// import '../data/repository.dart';
import 'categoryscreen.dart';

import 'drawerscreen.dart';
import 'homescreen.dart';

class Itemscreen extends StatefulWidget {
  String image;
  String title;
  String price;
  String brand;
  Itemscreen(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.brand});

  @override
  State<Itemscreen> createState() => _ItemscreenState();
}

class _ItemscreenState extends State<Itemscreen> {
  int selectedItemIndex = 0;
  String? colour;
  int isclicked = -1;
  // var dropdownvalue;
  // String Gender = "";
  // var username;
  // TextEditingController formcontroller = TextEditingController();
  final List<String> sizes = ["39", "40", "41", "42", "43"];
  @override
  void initState() {
    print(widget.image);
    super.initState();
  }
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                height: 350,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 200,
                      width: 250,
                      child: CarouselSlider(
                          items: [Image.network(
                              widget.image,
                              fit: BoxFit.fitHeight,
                            ),],
                          options: CarouselOptions(
                              height: MediaQuery.of(context).size.height, 
                              animateToClosest: true,
                              enlargeCenterPage: false,  
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration: const Duration(milliseconds: 800),
                              viewportFraction: 1,
                            ),
                        ),
                    ),
                    spacer(height: 2),
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.brand,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    spacer(height: 1),
                    Text(
                      widget.price,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.orange),
                    )
                  ],
                ),

                // ListView(
                //   children: [
                //     CarouselSlider(
                //       items: [
                //         //1st Image of Slider
                //         Container(
                //           margin: const EdgeInsets.all(6.0),
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(8.0),
                //             image: const DecorationImage(
                //               image: NetworkImage(
                //                   "https://www.turkishemarket.com/uploads/all/e2A13nYDm17QaZPic7o3wu4Xngx6LEvQVeBE3ytX.jpg"),
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //         ),

                //         //2nd Image of Slider
                //         Container(
                //           margin: const EdgeInsets.all(6.0),
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(8.0),
                //             image: const DecorationImage(
                //               image: NetworkImage(
                //                   "https://www.turkishemarket.com/uploads/all/MQiQMEzXhxzOOwFtKJjiYo7iQW6tCrIzsBsYffMC.jpg"),
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //         ),

                //         //3rd Image of Slider
                //         Container(
                //           margin: const EdgeInsets.all(6.0),
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(8.0),
                //             image: const DecorationImage(
                //               image: NetworkImage(
                //                   "https://www.turkishemarket.com/uploads/all/8QXMwnCnfFU0ndjDcd0FiM2HYrkgXEuxHfTgDZMs.jpg"),
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //         ),
                //       ],
                //       options: CarouselOptions(
                //         height: 200.0,
                //         enlargeCenterPage: true,
                //         autoPlay: true,
                //         aspectRatio: 16 / 9,
                //         autoPlayCurve: Curves.fastOutSlowIn,
                //         enableInfiniteScroll: true,
                //         autoPlayAnimationDuration:
                //             const Duration(milliseconds: 800),
                //         viewportFraction: 0.8,
                //       ),
                //     ),
                //   ],
                // ),

                // const Text(
                //   'Kinetix KB 231 Sports Shoes',
                //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                // ),
                // spacer(height: 20),
                // const Text('Men\'s Shoes'),
                // spacer(height: 20),
                // const Text(
                //   '\$99',
                //   style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 20,
                //       color: Colors.orange),
                // ),
              ),
              spacer(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Color:'),
                  Radio(
                      value: "grey",
                      groupValue: colour,
                      onChanged: (value) {
                        setState(() {
                          colour = value.toString();
                        });
                      }),
                  const Text('Grey'),
                  Radio(
                      value: "black",
                      groupValue: colour,
                      onChanged: (value) {
                        setState(() {
                          colour = value.toString();
                        });
                      }),
                  const Text('Black'),
                ],
              ),
              spacer(height: 20),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 90.0),
                    child: Text("Size:"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 30,
                    width: 130,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: sizes.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  isclicked = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  sizes[index],
                                  style: TextStyle(
                                      color: isclicked == index
                                          ? Colors.black
                                          : Colors.grey),
                                ),
                              ));
                        }),
                  ),
                ],
              ),
              spacer(height: 40),
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
                    'ADD TO CART',
                    style: TextStyle(color: Colors.white),
                  )),
              spacer(height: 60),
            ],
          ),
        ),   
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                  child: const Icon(Icons.home)),
              label: ' ',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
              ),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>   Itemscreen()));
                  },
                  child: const Icon(Icons.settings_input_component_sharp)),
              label: '',
            ),
          ],
          selectedItemColor: Colors.amber[800],
          currentIndex: selectedItemIndex,
          onTap: (int index) {
            setState(() {
              selectedItemIndex = index;
            });
          }),
    );
  }
}
