part of 'knot_bloc.dart';

abstract class KnotState extends Equatable {
  const KnotState();
  
  @override
  List<Object> get props => [];
}

class KnotInitial extends KnotState {
  const KnotInitial();

  @override
  List<Object>get props =>[];
}

class KnotLoading extends KnotState {
  const KnotLoading();

  @override
  List<Object>get props =>[];
}

class KnotLoaded extends KnotState {
  final  Knotmodel   knotmodel;
  const KnotLoaded(this.knotmodel);

  @override
  List<Object>get props =>[knotmodel];
}

class KnotError extends KnotState {
  final String msg;
  const KnotError(this.msg);

  @override
  List<Object>get props =>[msg];
}