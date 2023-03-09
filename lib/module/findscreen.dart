import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gypsybee/data/findvendor/bloc/findvendor_bloc.dart';

class Findvendor extends StatefulWidget {
  const Findvendor({super.key});

  @override
  State<Findvendor> createState() => FindvendorScreenState();
}

class FindvendorScreenState extends State<Findvendor> {
 FindvendorBloc newbloc=FindvendorBloc();

  @override
  void intiState(){
  newbloc=BlocProvider.of<FindvendorBloc>(context);
  newbloc.add(const FindvendorFetchEvent());
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Services',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 18, 112, 189),
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Stack(children: [
            BlocBuilder<FindvendorBloc, FindvendorState>(
            builder: (BuildContext context, state) {
             if(state is FindvendorLoaded){
               return Card(
                  color: const Color.fromARGB(255, 161, 184, 224),
                   clipBehavior: Clip.hardEdge,
                    child: SizedBox(
                     height: 250,
                     child: Column(
                        children: [
                        Text(
                          'name',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          'job ',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(       
                          'place',
                          style: TextStyle(fontSize: 25),
                        ),
                        Row(
                          children: const [
                            Text(
                              'data ',
                              style: TextStyle(fontSize: 30),
                            ),
                            Text(
                              ' data ',
                              style: TextStyle(fontSize: 30),
                            ),
                            Text(
                              ' data ',
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                        Text(
                          'phone',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          'email',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                 ),
               );
            }
                else{
                  return const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: .8,
                    ),
                  );
                } 
              },
            ), 
            const CircleAvatar(
              radius: 35,
            ),
          ]),
        ),
      ),
    );
  }
}
