part of 'knot_bloc.dart';

@immutable
abstract class KnotEvent extends Equatable {
  const KnotEvent();

  @override
  List<Object> get props => [];
}
 
 class KnotFetchEvent extends KnotEvent {
  const KnotFetchEvent();

  @override
  List<Object> get props => [];
}
