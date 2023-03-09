part of 'stock_bloc.dart';

abstract class StockState extends Equatable {
  const StockState();
  
  @override
  List<Object> get props => [];
}

class StockInitial extends StockState {
   const StockInitial();
  
  @override
  List<Object> get props => [];
}

class StockLoading extends StockState {
   const StockLoading();
  
  @override
  List<Object> get props => [];
}

class StockLoaded extends StockState {
  final List<Stockmodel> stockmodel;
   const StockLoaded(this.stockmodel);
  
  @override
  List<Object> get props => [stockmodel];
}

class StockError extends StockState {
  final String msg;
   const StockError(this.msg);
  
  @override
  List<Object> get props => [msg];
}
