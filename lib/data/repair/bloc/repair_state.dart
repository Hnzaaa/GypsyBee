part of 'repair_bloc.dart';

abstract class RepairState extends Equatable {
  const RepairState();
  
  @override
  List<Object> get props => [];
}

class RepairInitial extends RepairState {
  const RepairInitial();
  
  @override
  List<Object> get props => [];
}

class RepairLoading extends RepairState {
  const RepairLoading();
  
  @override
  List<Object> get props => [];
}

class RepairLoaded extends RepairState {
  final Searchrepairmodel repairmodel;
    const RepairLoaded(this.repairmodel);
  
  @override
  List<Object> get props => [repairmodel];
}

class RepairError extends RepairState {
  final String msg;
  const RepairError(this.msg);
  
  @override
  List<Object> get props => [msg];
}