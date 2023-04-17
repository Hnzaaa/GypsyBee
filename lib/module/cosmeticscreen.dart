import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gypsybee/data/cosmetics/bloc/cosmetics_bloc.dart';
import 'package:gypsybee/module/widgets.dart';

class Cosmeticscreen extends StatefulWidget {
  const Cosmeticscreen({super.key});

  @override
  State<Cosmeticscreen> createState() => CosmeticscreenState();
}

class CosmeticscreenState extends State<Cosmeticscreen> {
  CosmeticsBloc newbloc=CosmeticsBloc();
  @override
  void initState(){
    newbloc=BlocProvider.of<CosmeticsBloc>(context);
    newbloc.add(const CosmeticsFetchEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Cosmetics',
            style: GoogleFonts.abel(
              color: const Color.fromARGB(255, 90, 65, 12),
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: BlocBuilder<CosmeticsBloc, CosmeticsState>(
          builder: (BuildContext context, state) {  
            if(state is CosmeticsLoaded){
               return SizedBox(
                height: MediaQuery.of(context).size.height, 
                 child: GridView.builder(
                  itemCount: state.cosmeticmodel.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2),
                  ),
                  itemBuilder: (BuildContext context, index) {
                    return
                     Cosmeticwidget().cosmeticgrid(
                          image: state.cosmeticmodel[index].imageLink.toString(),
                          name: state.cosmeticmodel[index].name.toString(),
                          brand: state.cosmeticmodel[index].brand.toString(),
                          price: state.cosmeticmodel[index].price.toString(), );
                  }),
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
        ));
  }
}
