import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gypsybee/data/repairmodel.dart';
import 'package:gypsybee/data/repository.dart';

part 'repair_event.dart';
part 'repair_state.dart';

class RepairBloc extends Bloc<RepairEvent, RepairState> {
  RepairBloc() : super(const RepairInitial()) {
    on<RepairEvent>((event, emit)async {
      emit(const RepairLoading());
      try{
         if(event is RepairFetchEvent){
             var repairresponse=await Repository().getrepairab(url: event.url,
             id: event.repairid ,sub_name: event.searchvalue );
             emit(RepairLoaded(repairresponse));
         }
      }
      catch (e){
         emit(RepairError(e.toString()));
      }
    });
  }
}
