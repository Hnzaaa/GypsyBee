part of 'service_bloc.dart';

abstract class ServiceEvent extends Equatable {
  const ServiceEvent();

  @override
  List<Object> get props => [];
}
class FetchServiceEvent extends ServiceEvent {
  const FetchServiceEvent();

  @override
  List<Object> get props => [];
}
