part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class FetchCategoryEvent extends CategoryEvent{
  const FetchCategoryEvent();

  @override
  List<Object> get props => [];
}