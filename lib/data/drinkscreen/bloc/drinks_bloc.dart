import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:gypsybee/data/drinksmodel.dart'; 
import '../../repository.dart'; 
part 'drinks_event.dart';
part 'drinks_state.dart';

class DrinksBloc extends Bloc<DrinksEvent, DrinksState> {
  DrinksBloc() : super(const DrinksInitial()) {
    on<DrinksEvent>((event, emit) async {
      emit( const DrinksLoading());
      try
      {  if (event is DrinkFetchEvent) {
          var drinkresponse= await Repository()
          .getdrinkab(url: 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita'); 
               emit(DrinksLoaded(drinkresponse));   
                }
      } catch (e) {
        emit(DrinksError(e.toString()));
      }
    });
  }
}
