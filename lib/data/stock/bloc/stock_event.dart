part of 'stock_bloc.dart';

abstract class StockEvent extends Equatable {
  const StockEvent();

  @override
  List<Object> get props => [];
}

class StockFetchEvent extends StockEvent {
  const StockFetchEvent();

  @override
  List<Object> get props => [];
}
