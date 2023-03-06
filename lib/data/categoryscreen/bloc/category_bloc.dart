import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gypsybee/data/categorymodel.dart';
import 'package:gypsybee/data/repository.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryInitial()) {
    on<CategoryEvent>((event, emit) async{
     emit (const CategoryLoading());
     try{
          if(event is FetchCategoryEvent){
            var categoryresponse=await Repository().getcategoryab(url: 'https://dummyjson.com/products');
            emit(CategoryLoaded(categoryresponse));
          }
     }
     catch(e){
      emit (CategoryError(e.toString())); 
     }
    });
  }
}
