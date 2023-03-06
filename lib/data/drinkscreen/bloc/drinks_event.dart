part of 'drinks_bloc.dart';

@immutable
abstract class DrinksEvent extends Equatable {
  const DrinksEvent();

  @override
  List<Object> get props => [];
}
class DrinkFetchEvent extends DrinksEvent{
  const DrinkFetchEvent();

  @override
  List<Object> get props => [];
}