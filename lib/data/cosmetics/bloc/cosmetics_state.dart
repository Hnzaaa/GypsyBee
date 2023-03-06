part of 'cosmetics_bloc.dart';

abstract class CosmeticsState extends Equatable {
  const CosmeticsState();
  
  @override
  List<Object> get props => [];
}

class CosmeticsInitial extends CosmeticsState {
   const CosmeticsInitial();
  
  @override
  List<Object> get props => [];

}

class CosmeticsLoading extends CosmeticsState {
   const CosmeticsLoading();
  
  @override
  List<Object> get props => [];

}

class CosmeticsLoaded extends CosmeticsState {
   final List<Cosmeticmodel> cosmeticmodel;
   const CosmeticsLoaded(this.cosmeticmodel);
  
  @override
  List<Object> get props => [cosmeticmodel];

}

class CosmeticsError extends CosmeticsState {
  final String msg;
   const CosmeticsError(this.msg);
  
  @override
  List<Object> get props => [msg];

}
