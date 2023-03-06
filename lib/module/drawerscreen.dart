import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gypsybee/module/blocscreen.dart';
import 'package:gypsybee/module/drinksscreen.dart';
import 'package:gypsybee/module/knotscreen.dart';
import 'package:gypsybee/module/cosmeticscreen.dart';
import 'package:gypsybee/module/servicesscreen.dart';
import 'package:gypsybee/module/usdatascreen.dart';
import 'gamescreen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.yellow,
      ),
      child: Drawer(
          backgroundColor: const Color.fromARGB(255, 248, 226, 160),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 28,
                      backgroundColor: Color.fromARGB(255, 248, 226, 160),
                      backgroundImage: AssetImage('assets/log.png'),
                    ),
                    title: Text(
                      'GypsyBee',
                      style: GoogleFonts.abrilFatface(
                        color: const Color.fromARGB(255, 47, 47, 54),
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    subtitle: const Text(
                      "Menu Items",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.face_retouching_natural),
                  title: const Text("Cosmetics"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cosmeticscreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.school),
                  title: const Text("Universities List"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Blocscreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.list),
                  title: const Text("USA Data"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Usdata()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.liquor),
                  title: const Text("Drinks"),
                  onTap: () {
                     Navigator.push(context,MaterialPageRoute(builder: (context) => const Drinksscreeen()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text(" Random"),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const KnotScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.games),
                  title: const Text("Games"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Gamescreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Services"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Servicescreen()));
                  },
                ),
              ],
            ),
          )),
    );
  }
}
