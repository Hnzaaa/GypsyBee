part of 'new_bloc_bloc.dart';

@immutable
abstract class NewBlocState extends Equatable {
  const NewBlocState();
  @override
  List<Object> get props => [];
}

class NewBlocInitial extends NewBlocState {
  const NewBlocInitial();
  @override
  List<Object> get props => [];
}

class NewBlocLoading extends NewBlocState {
  const NewBlocLoading();
  @override
  List<Object> get props => [];
}

class NewBlocLoaded extends NewBlocState {
  final  Usmodel  usmodel;
  final List<Blocmodel> blocmodel; 
  const NewBlocLoaded(  this.usmodel, this.blocmodel ); 
  @override
  List<Object> get props => [usmodel, blocmodel];
}

class NewBlocError extends NewBlocState {
  final String msg;
  const NewBlocError(this.msg);

  @override
  List<Object> get props => [msg];
}
