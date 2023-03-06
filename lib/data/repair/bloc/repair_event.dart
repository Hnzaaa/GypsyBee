part of 'repair_bloc.dart';

abstract class RepairEvent extends Equatable {
  const RepairEvent();

  @override
  List<Object> get props => [];
}

class InitialEvent extends RepairEvent{
  const InitialEvent();

  @override
  List<Object>get props=>[];
}

class RepairFetchEvent extends RepairEvent {
  final String url;
    final String repairid;
  final String searchvalue;

  const RepairFetchEvent(this.url,this.repairid,this.searchvalue,);

  @override
  List<Object> get props => [url,repairid,searchvalue,];
}
