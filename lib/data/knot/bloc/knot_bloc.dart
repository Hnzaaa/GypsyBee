import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gypsybee/data/repository.dart';
import 'package:gypsybee/data/knotmodel.dart';
part 'knot_event.dart';
part 'knot_state.dart';

class KnotBloc extends Bloc<KnotEvent, KnotState> {
  KnotBloc() : super(const KnotInitial()) {
    on<KnotEvent>((event, emit)async {
      emit(const KnotLoading());
      try{
        if(event is KnotFetchEvent){
          var getknotresponse= await Repository().getknotab(url: 'https://xkcd.com/info.0.json');
          emit(KnotLoaded(getknotresponse));
        }
      }
      catch(e){
        emit(KnotError(e.toString()));
      }
    });
  }
}
