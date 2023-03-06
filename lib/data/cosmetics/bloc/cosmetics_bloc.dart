import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gypsybee/data/cosmeticmodel.dart';
import 'package:gypsybee/data/repository.dart';

part 'cosmetics_event.dart';
part 'cosmetics_state.dart';

class CosmeticsBloc extends Bloc<CosmeticsEvent, CosmeticsState> {
  CosmeticsBloc() : super(const CosmeticsInitial()) {
    on<CosmeticsEvent>((event, emit) async{
      emit(const CosmeticsLoading());
      try{
        if(event is CosmeticsFetchEvent){ 
          var cosmeticsresponse=await Repository().getcosmeticsab();
          emit(CosmeticsLoaded(cosmeticsresponse)); 
        }
      }
      catch(e){
        emit(CosmeticsError(e.toString()));
      }
    });
  }
}
