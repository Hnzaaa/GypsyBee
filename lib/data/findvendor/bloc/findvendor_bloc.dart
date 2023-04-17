import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gypsybee/data/repository.dart'; 
import '../../findvendormodel.dart'; 
part 'findvendor_event.dart';
part 'findvendor_state.dart';

class FindvendorBloc extends Bloc<FindvendorEvent, FindvendorState> {
  FindvendorBloc() : super(const FindvendorInitial()) {
    on<FindvendorEvent>((event, emit)async {
      emit(const FindvendorLoading());
      try{
         if(event is FindvendorFetchEvent){
          var vendor=await Repository().getvendorab(url:'http://ayatanacoorg.in/api/v1/saleteam/serviceproviderslist',
                                                    subservice_id: '113');
          emit(FindvendorLoaded(vendor));
         }
      }
      catch(e){
        emit(FindvendorError(e.toString()));
      } 
    });
  }
}
