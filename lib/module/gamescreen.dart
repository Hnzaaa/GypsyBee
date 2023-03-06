// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gypsybee/data/categorymodel.dart';
import '../data/repository.dart';
import 'drawerscreen.dart';
import 'homescreen.dart';

class Gamescreen extends StatefulWidget {
  @override
  State<Gamescreen> createState() => _GamescreenState();
}

class _GamescreenState extends State<Gamescreen> {
  int selectedItemIndex = 0;
  String? colour;
  int isclicked = -1;
  var dropdownvalue;
  String Gender = "";
  String Age = "";
  var username;
  TextEditingController formcontroller = TextEditingController();
  final List<String> sizes = ["39", "40", "41", "42", "43"];
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
              spacer(height: 60),
              FutureBuilder(
                future: Repository()
                    .getcategoryab(url: 'https://dummyjson.com/products'),
                builder: (BuildContext context,
                    AsyncSnapshot<Categorymodel> snapshot) {
                  if (snapshot.hasData) {
                    var data = snapshot.data!.products;
                    return Container(
                      padding: const EdgeInsets.symmetric( 
                        horizontal: 10, vertical: 5), 
                           decoration: BoxDecoration( 
                         color: Colors.black38, 
                                     borderRadius: BorderRadius.circular(10)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: const Text('Select Product'), 
                          dropdownColor: Colors.black,
                          value: dropdownvalue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          items: data!.map((items) {
                            return DropdownMenuItem(
                              value: items.title,
                              child: Text(
                                items.title.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              dropdownvalue = newValue.toString();
                            });
                          },
                        ),
                      ),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              spacer(height: 30),
              TextFormField(
                controller: formcontroller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      formcontroller.clear();
                    },
                  ),
                  labelText: 'Name',
                  border: const OutlineInputBorder(),
                ),
              ),
              spacer(height: 20),
              MaterialButton(
                  color: Colors.black,
                  onPressed: () async {
                    // print(formcontroller.text);
                    setState(() {
                      username = formcontroller.text.toString();
                    });
                    String url = 'https://api.genderize.io/';
                    await Repository()
                        .getgenderab(url: url, name: username)
                        .then(
                      (value) {
                        setState(
                          () {
                            // print(value.gender);
                            Gender = value.gender.toString();
                          },
                        );
                      },
                    );
                    String url2 = 'https://api.agify.io/';
                    await Repository()
                        .getageab(url: url2, name: username)
                        .then((value) {
                      setState(() {
                        // print(value.age);
                        Age = value.age.toString();
                      });
                    });
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  )),
              spacer(height: 40),
              Text(
                Gender,
                style: GoogleFonts.sacramento(
                  color: const Color.fromARGB(255, 47, 47, 54),
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
              spacer(height: 20),
              Text(
                Age,
                style: GoogleFonts.b612Mono(
                  color: const Color.fromARGB(255, 47, 47, 54),
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
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
