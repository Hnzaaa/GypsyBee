import 'package:flutter/material.dart';
import 'package:gypsybee/data/blocscreen/bloc/new_bloc_bloc.dart';
import 'package:gypsybee/data/categoryscreen/bloc/category_bloc.dart';
import 'package:gypsybee/data/cosmetics/bloc/cosmetics_bloc.dart';
import 'package:gypsybee/data/drinkscreen/bloc/drinks_bloc.dart';
import 'package:gypsybee/data/findvendor/bloc/findvendor_bloc.dart';
import 'package:gypsybee/data/knot/bloc/knot_bloc.dart';
import 'package:gypsybee/data/repair/bloc/repair_bloc.dart';
import 'package:gypsybee/data/service/bloc/service_bloc.dart';
import 'package:gypsybee/data/stock/bloc/stock_bloc.dart';
import 'package:gypsybee/module/homescreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp( MultiBlocProvider(
    providers:[
      BlocProvider( create: (_) => NewBlocBloc() ),
      BlocProvider( create: (BuildContext context) => CategoryBloc() ),
      BlocProvider( create: (BuildContext context) => DrinksBloc() ),
      BlocProvider(create: (BuildContext context )=> KnotBloc()),
      BlocProvider(create: (BuildContext context )=> ServiceBloc()),
      BlocProvider(create: (BuildContext context) => RepairBloc()),
      BlocProvider(create: (BuildContext context)=>CosmeticsBloc()),
      BlocProvider(create: (BuildContext context)=>StockBloc()),
      BlocProvider(create: (BuildContext context)=>FindvendorBloc()),
    
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GipsyBee',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
    );
  }
}
