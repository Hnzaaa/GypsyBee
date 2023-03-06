part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
  
  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {
  const CategoryInitial();
  
  @override
  List<Object> get props => [];
}
 
class CategoryLoading extends CategoryState {
  const CategoryLoading();
  
  @override
  List<Object> get props => [];
}

class CategoryLoaded extends CategoryState {
  final Categorymodel categorymodel;
  const CategoryLoaded(this.categorymodel);
  
  @override
  List<Object> get props => [categorymodel];
}

class CategoryError extends CategoryState {
  final String msg;
  const CategoryError(this.msg);
  
  @override
  List<Object> get props => [msg];
}