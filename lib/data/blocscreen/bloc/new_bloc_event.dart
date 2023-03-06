part of 'new_bloc_bloc.dart';

@immutable
abstract class NewBlocEvent extends Equatable { 
  const NewBlocEvent();
  @override
  List<Object> get props => [];  
}

// class FetchEvent extends NewBlocEvent {
//   const FetchEvent();
//   @override
//   List<Object> get props => [];
// }

class UsdataEvent extends NewBlocEvent{
  const UsdataEvent();
  @override
  List<Object> get props => []; 
}