part of 'findvendor_bloc.dart';

abstract class FindvendorState extends Equatable {
  const FindvendorState();
  
  @override
  List<Object> get props => [];
}

class FindvendorInitial extends FindvendorState {
  const FindvendorInitial();
  
  @override
  List<Object> get props => [];
}

class FindvendorLoading extends FindvendorState {
  const FindvendorLoading();
  
  @override
  List<Object> get props => [];
}

class FindvendorLoaded extends FindvendorState {
  final Findvendormodel findvendormodel;
  const FindvendorLoaded(this.findvendormodel);
  
  @override
  List<Object> get props => [findvendormodel];
}

class FindvendorError extends FindvendorState {
  final String msg;
  const FindvendorError(this.msg);
  
  @override
  List<Object> get props => [msg];
}