import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gypsybee/data/blocscreen/bloc/new_bloc_bloc.dart'; 

class Blocscreen extends StatefulWidget {
  const Blocscreen({super.key});

  @override
  State<Blocscreen> createState() => Blocscreenstate();
}

class Blocscreenstate extends State<Blocscreen> {
 NewBlocBloc newbloc = NewBlocBloc();
  @override
  void initState() {
    newbloc = BlocProvider.of<NewBlocBloc>(context);
    newbloc.add(const UsdataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Bloc Page'),),
      body: BlocBuilder<NewBlocBloc, NewBlocState>(
        builder: (context, state) { 
          if (state is NewBlocLoaded) {  
            return Container(height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: state.blocmodel.length,
                itemBuilder: (context, index) {
                    return   ListTile(
                    leading: Text(state.blocmodel[index].alphaTwoCode.toString()),
                    title: Text(state.blocmodel[index].country.toString()),
                    subtitle: Text(state.blocmodel[index].name.toString()),
                    );
                }),
            );
              //       return Card(
              //        child: Container(
              //        margin: const EdgeInsets.all(8.0),
              //         child: Column(
              //              children: <Widget>[const Text('hyy'),
              //                   Text(state.blocmodel[index].country.toString(),
              //              style: GoogleFonts.caladea(
              //                color: const Color.fromARGB(255, 48, 48, 70),
              //                fontSize: 28,
              //                fontWeight: FontWeight.w900,
              //              ),) ,
              //                  Text(state.blocmodel[index].name.toString()toString(),
              //              style: GoogleFonts.cairo(
              //                color: const Color.fromARGB(255, 49, 49, 63),
              //                fontSize: 28,
              //                fontWeight: FontWeight.w900,
              //              ),),   
              //              ],
              //     ),
              //   ),
              // );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 0.8,color: Colors.black,
              ),
            );
          }
        },
      ),
    );
  }
}
