import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gypsybee/data/service/bloc/service_bloc.dart';
import 'package:gypsybee/module/new.dart';
import 'package:gypsybee/module/searchservice.dart';
import 'package:gypsybee/module/widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Servicescreen extends StatefulWidget {
  const Servicescreen({super.key});

  @override
  State<Servicescreen> createState() => ServicescreenState();
}

class ServicescreenState extends State<Servicescreen> { 
   
  ServiceBloc newbloc=ServiceBloc();

  @override
  void initState(){
    newbloc=BlocProvider.of<ServiceBloc>(context);
    newbloc.add(const FetchServiceEvent());
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
      body: BlocBuilder<ServiceBloc, ServiceState>(
        builder: (BuildContext context, state) {  
           if (state is Serviceloaded) {  
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  shrinkWrap: true,
                 itemCount: state.servicemodel.response!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 2),
                    ),
                  itemBuilder: (BuildContext context, int index) { 
                   return InkWell(
                     onTap: (){ 
                       showMaterialModalBottomSheet(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                         context: context,
                         backgroundColor: Colors.white,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10.0),
                           ),
                         builder: (context) =>   SizedBox(height: 500,
                           child: Searchservice(
                              icon: 'http://ayatanacoorg.in/media/attachment/${state.servicemodel.response![index].icons}'.toString(), 
                              subject: (state.servicemodel.response![index].value).toString(),
                              id: (state.servicemodel.response![index].id).toString()
                           ),
                         ),
                       );
                      },
                     child: 
                     ServiceWidget().servicegrid(
                       icon: 'http://ayatanacoorg.in/media/attachment/${state.servicemodel.response![index].icons}'.toString(), 
                       subject: (state.servicemodel.response![index].value).toString(),
                       id: (state.servicemodel.response![index].id).toString()
                     )
                    );
                }),
              );
              } else {
               return const Center( 
                 child: CircularProgressIndicator(
                  strokeWidth: .9,
                  color: Colors.black,
                 ),
               );
            }
         },
       ),
      bottomNavigationBar: BottomNavigationBar( 
        showUnselectedLabels: true,
        iconSize: 30, 
        items:   <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: InkWell(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Newscreen()));
                },child: Icon(Icons.search),),
                label: 'Job Search', 
                backgroundColor: Color.fromARGB(255, 18, 112, 189),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Applied Job', 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.telegram),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_box),
              label: 'Shortlisted',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Services',
            ),
          ]),
    );
  }
}
