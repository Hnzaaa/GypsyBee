import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gypsybee/data/repository.dart';
import 'package:gypsybee/data/stockmodel.dart';

part 'stock_event.dart';
part 'stock_state.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  StockBloc() : super(const StockInitial()) {
    on<StockEvent>((event, emit)async {
      emit(const StockLoading());
      try{
         if(event is StockFetchEvent){
          var stockresponse=await Repository().getstockab();
          emit(StockLoaded(stockresponse));
         }
      }
      catch(e){
        emit(StockError(e.toString()));
      }
    });
  }
}
