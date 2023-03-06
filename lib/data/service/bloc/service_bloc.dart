import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gypsybee/data/repository.dart';
import 'package:gypsybee/data/servicemodel.dart'; 
part 'service_event.dart';
part 'service_state.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  ServiceBloc() : super(const ServiceInitial()) {
    on<ServiceEvent>((event, emit)async {
     emit(const ServiceLoading());
     try{ 
         if(event is FetchServiceEvent){
          var getservicelist=await Repository().getserviceab(url: 'http://ayatanacoorg.in/api/v1/saleteam/serviceslist');
          emit(Serviceloaded(getservicelist));
         }
     }
     catch(e){
       emit(ServiceError(e.toString()));
     }
    });
  }
} 