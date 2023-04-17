import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gypsybee/data/drinkscreen/bloc/drinks_bloc.dart'; 
import 'package:gypsybee/module/widgets.dart';
 
 
class Drinksscreeen extends StatefulWidget {
  const Drinksscreeen({super.key});

  @override
  State<Drinksscreeen> createState() => DrinksscreeenState();
}

class DrinksscreeenState extends State<Drinksscreeen> {
DrinksBloc newbloc = DrinksBloc();
  @override
  void initState() {
    newbloc = BlocProvider.of<DrinksBloc>(context);
    newbloc.add(const DrinkFetchEvent());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drinks')),
      body:   BlocBuilder<DrinksBloc, DrinksState>(
          builder: (BuildContext context, state) { 
             if (state is DrinksLoaded) {
              return GridView.builder(
                itemCount: state.drinksmodel.drinks!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 2), ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  // onTap: () {
                  //   Navigator.push(context, 
                  //       MaterialPageRoute(
                  //           builder: (context) => Itemscreen(
                  //                 image: (state.drinksmodel.drinks![index].strImageAttribution).toString(),
                  //                 title: (state.drinksmodel.drinks![index].strDrink).toString(), 
                  //                 price: (state.drinksmodel.drinks![index].strGlass).toString(),  
                  //                 brand: (state.drinksmodel.drinks![index].idDrink).toString(), 
                  //               )));},
                  child: CategoryWidget().categorygrid(
                      image: (state.drinksmodel.drinks![index].strDrinkThumb).toString(),
                      title: (state.drinksmodel.drinks![index].strDrink).toString(),
                      brand: (state.drinksmodel.drinks![index].strGlass).toString(),
                      price: (state.drinksmodel.drinks![index].idDrink).toString()),
                  );
                },
              ); 
            }
            else {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 0.8,
                ),
              );
            } }, 
      ),
    );
  }
}
