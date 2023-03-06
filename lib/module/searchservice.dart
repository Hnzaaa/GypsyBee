import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gypsybee/data/repair/bloc/repair_bloc.dart';
import 'package:gypsybee/data/repairmodel.dart';
import 'package:gypsybee/data/repairmodel.dart';

import '../data/repairmodel.dart';
 

class Searchservice extends StatefulWidget {
  String icon;
  String subject;
  String id;

  Searchservice(
      {super.key, required this.icon, required this.subject, required this.id});

  @override
  State<Searchservice> createState() => SearchserviceState();
}

class SearchserviceState extends State<Searchservice> {
  TextEditingController searchcontroller = TextEditingController();

  RepairBloc newbloc=RepairBloc();
  @override
  void initState(){
    newbloc=BlocProvider.of<RepairBloc>(context);
    newbloc.add(const InitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget spacer({required double height}) {
      return SizedBox(height: height);
    }

    return Theme(
      data: ThemeData(canvasColor: Colors.white),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 40,
                    width: 40,
                    child: Image.network(
                      widget.icon,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Text('   ${widget.subject}',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 17, 95, 158),
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              spacer(height: 20),
              TextFormField(
                controller: searchcontroller,
                style: const TextStyle(color: Colors.grey),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search Services'),
                onChanged: (newvalue){
                  setState(() {
                    context.read<RepairBloc>().add(RepairFetchEvent('http://ayatanacoorg.in/api/v1/saleteam/subserviceslist',widget.id.toString(),
                           newvalue.toString(),));
                  }); 
                },
              ),
              spacer(height: 10),
              BlocBuilder<RepairBloc, RepairState>(
                builder: (BuildContext context, state) {
                  if(state is RepairLoaded){
                    return Container(height: 150,
                      child: ListView.builder(
                        itemCount: state.repairmodel.response!.length,
                        itemBuilder: (BuildContext context, index) {
                          return ListTile(
                            leading: Text(state.repairmodel.response![index].subName.toString(),style: const TextStyle(color: Colors.black),),
                          );  
                        }),
                    );
                  }
                  else{
                    return const CircularProgressIndicator(strokeWidth: .8,);
                  }
                },
              ),
              spacer(height: 10),
              MaterialButton(
                  color: const Color.fromARGB(255, 108, 75, 161),
                  onPressed: () {},
                  child: const Text(
                    'Find Vendors',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

 
