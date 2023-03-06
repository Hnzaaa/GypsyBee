import 'package:bloc/bloc.dart';
import 'package:gypsybee/data/blocmodel.dart';
import 'package:gypsybee/data/repository.dart';
import 'package:gypsybee/data/usdatamodel.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
part 'new_bloc_event.dart';
part 'new_bloc_state.dart';

class NewBlocBloc extends Bloc<NewBlocEvent, NewBlocState> {
  NewBlocBloc() : super(const NewBlocInitial()) {
    on<NewBlocEvent>((event, emit) async {
      emit(const NewBlocLoading());
      try                  
      {  if (event is UsdataEvent) { 
          var usdataresponse= await Repository()
          .getdataab(url: 'https://datausa.io/api/data',  drilldowns: 'Nation', measures: 'Population');
          var blocresponse = await Repository()
          .getblocab(url: 'http://universities.hipolabs.com/search'); 
               emit(NewBlocLoaded(usdataresponse,
               blocresponse
               ));   
                }
      } catch (e) {
        emit(NewBlocError(e.toString()));
      }
    });
  }
}
