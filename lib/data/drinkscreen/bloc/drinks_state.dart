part of 'drinks_bloc.dart';

abstract class DrinksState extends Equatable {
  const DrinksState();
  
  @override
  List<Object> get props => [];    
}

class DrinksInitial extends DrinksState {
  const DrinksInitial();
  
  @override
  List<Object> get props => [];
}

class DrinksLoading extends DrinksState {
  const DrinksLoading();
  
  @override
  List<Object> get props => [];
}

class DrinksLoaded extends DrinksState {
  final Drinksmodel drinksmodel;
  const DrinksLoaded(this.drinksmodel);
  
  @override
  List<Object> get props => [drinksmodel];
}

class DrinksError extends DrinksState {
  final String msg;
  const DrinksError(this.msg);
  
  @override
  List<Object> get props => [msg];
}