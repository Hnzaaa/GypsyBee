part of 'service_bloc.dart';

abstract class ServiceState extends Equatable {
  const ServiceState();
  
  @override
  List<Object> get props => [];
}

class ServiceInitial extends ServiceState {
  const ServiceInitial();

  @override
  List<Object> get props =>[];
}

class ServiceLoading extends ServiceState {
  const ServiceLoading();

  @override
  List<Object> get props =>[];   
}

class Serviceloaded extends ServiceState {
  final Servicemodel servicemodel;
  const Serviceloaded(this.servicemodel);

  @override
  List<Object> get props =>[servicemodel];
}

class ServiceError extends ServiceState {
  final String msg;
  const ServiceError(this.msg);

  @override
  List<Object> get props =>[msg];
}