import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gypsybee/data/blocscreen/bloc/new_bloc_bloc.dart';


class Usdata extends StatefulWidget {
  const Usdata({
    super.key,
  });

  @override
  State<Usdata> createState() => _UsdataState();
}
class _UsdataState extends State<Usdata> {
   NewBlocBloc newbloc = NewBlocBloc();
  @override
  void initState() {
    newbloc = BlocProvider.of<NewBlocBloc>(context);
    newbloc.add(const UsdataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(title: const Text('USA Population Data')),
      body: BlocBuilder<NewBlocBloc,NewBlocState>(
        builder: (BuildContext context, state) { 
            if (state is NewBlocLoaded) {
             return ListView.builder(
              itemCount: state.usmodel.data!.length,
              itemBuilder: (context, index) { 
                return ListTile(
                  title: Text('Year - ${state.usmodel.data![index].year}',style: GoogleFonts.b612Mono(
                  color: const Color.fromARGB(255, 155, 113, 22),
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),) ,
                  subtitle: Text(state.usmodel.data![index].population.toString(),style: GoogleFonts.b612Mono(
                  color: const Color.fromARGB(255, 202, 168, 18),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),), 
                );
              });}else {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 0.8,
                ),
              );
            }
        }
      )
         );
  } 
}
