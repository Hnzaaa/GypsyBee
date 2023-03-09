import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gypsybee/data/stock/bloc/stock_bloc.dart'; 

class Stockscreen extends StatefulWidget {
  const Stockscreen({super.key});

  @override
  State<Stockscreen> createState() => Stockscreenstate();
}

class Stockscreenstate extends State<Stockscreen> {

 final ScrollController scrollController=ScrollController();
 StockBloc newbloc = StockBloc();
  @override
  void initState() {
    newbloc = BlocProvider.of<StockBloc>(context);
    newbloc.add(const StockFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Stocks'),),
      body: BlocBuilder<StockBloc, StockState>(
        builder: (context, state) { 
          if (state is StockLoaded) {  
            return SizedBox(height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
              child: Scrollbar( 
                controller: scrollController,
                interactive: true,
                thumbVisibility: true,
                trackVisibility: true,
                thickness: 11,
                radius: const Radius.circular(5),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: state.stockmodel.length,
                  itemBuilder: (context, index) {
                      return   ListTile(
                      leading: Text(state.stockmodel[index].ticker.toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      title: Text(state.stockmodel[index].industry.toString(),style: const TextStyle(fontSize:18),),
                      subtitle: Text(state.stockmodel[index].sector.toString()),
                      trailing: Text(state.stockmodel[index].party.toString(),style: const TextStyle(fontSize: 12),),
                      );
                  }),
              ),
            );
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
