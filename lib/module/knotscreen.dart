import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gypsybee/data/knot/bloc/knot_bloc.dart'; 
 

class KnotScreen extends StatefulWidget {
  const KnotScreen({super.key});

  @override
  State<KnotScreen> createState() => KnotScreenState();
}

class KnotScreenState extends State<KnotScreen> {
KnotBloc newbloc=KnotBloc(); 
  @override
  void initState(){
    newbloc = BlocProvider.of<KnotBloc>(context);
    newbloc.add(const KnotFetchEvent());
    super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Knot'),
      ),
      body: BlocBuilder<KnotBloc, KnotState>(
        builder: (context, state) {
          if(state is KnotLoaded){ 
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:   [
                Text(state.knotmodel.title!, style: const TextStyle(fontSize: 40,color: Color.fromARGB(255, 226, 178, 33)),),
                Image.network(state.knotmodel.img!),
                Text('Month - ${state.knotmodel.month!}', style: const TextStyle(fontSize: 20,color: Color.fromARGB(255, 243, 183, 2)),),
               Text(state.knotmodel.year!,style: const TextStyle(fontSize: 20,color: Color.fromARGB(255, 230, 175, 11)),), 
               Text(state.knotmodel.alt!,style: const TextStyle(fontSize: 15),),    
              ],
            ),
            );}
          else{
            return const Center(child: CircularProgressIndicator(strokeWidth: .8, color: Colors.black,));
          }  
        },
      ),
    );
  }
}
