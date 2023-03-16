import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gypsybee/data/findvendor/bloc/findvendor_bloc.dart';

class Findvendor extends StatefulWidget {
  const Findvendor(  {super.key, required id});

  @override
  State<Findvendor> createState() => FindvendorScreenState();
}

class FindvendorScreenState extends State<Findvendor> {
 FindvendorBloc newbloc=FindvendorBloc();

  @override
  void initState(){ 
  newbloc=BlocProvider.of<FindvendorBloc>(context);
  newbloc.add(const FindvendorFetchEvent());
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget spacer({required double height}) {
      return SizedBox(height: height);
    }


    return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Vendors',
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
        body: BlocBuilder<FindvendorBloc, FindvendorState>( 
           builder: (BuildContext context, state) { 
              if(state is FindvendorLoaded){
               return Padding(
                padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Stack(
                      children: [
                         Card(
                          color: const Color.fromARGB(255, 161, 184, 224),
                          clipBehavior: Clip.hardEdge,
                          child: SizedBox(
                            height: 250,
                             child: ListView.builder(
                             itemCount: state.findvendormodel.response!.length,
                             itemBuilder: (BuildContext context, int index){  
                             return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                spacer(height: 2),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Text(
                                    state.findvendormodel.response![index].user!.name.toString(),
                                    style: const TextStyle(fontSize: 25,color: Color.fromARGB(255, 22, 106, 175)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Text(
                                    state.findvendormodel.response![index].designation.toString(),
                                    style: const TextStyle(fontSize: 25,color: Color.fromARGB(255, 22, 106, 175)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         const Icon(Icons.location_on,color: Colors.blue,),
                                         Text(       
                                            state.findvendormodel.response![index].user!.city.toString(),
                                            style:  const TextStyle(fontSize: 25,color: Color.fromARGB(255, 22, 106, 175)),
                                          ),
                                       ],
                                     ),
                                 ), 
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:   [
                                    Text(
                                      state.findvendormodel.response![index].picture1.toString(), 
                                    ),
                                    Text(
                                      state.findvendormodel.response![index].picture2.toString(), 
                                    ),
                                    Text(
                                      state.findvendormodel.response![index].picture3.toString(), 
                                    ),
                                    Text(
                                      state.findvendormodel.response![index].picture4.toString(), 
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Icon(Icons.phone,color: Colors.blue,),
                                        Text(
                                          state.findvendormodel.response![index].user!.phone.toString(),
                                          style: const TextStyle(fontSize: 25,color: Color.fromARGB(255, 22, 106, 175)),
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
                                      children: [
                                        const Icon(Icons.mail,color: Colors.blue,),
                                        Text(
                                          state.findvendormodel.response![index].user!.email.toString(),
                                          style: const TextStyle(fontSize: 25),
                                        ),
                                      ],
                                    ),
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
                  );
                } 
                 else{
                  return const Center(
                    child: CircularProgressIndicator(color: Colors.black,
                      strokeWidth: .8,
                    ),
                  );
                }
          },
    ));
  }
  }