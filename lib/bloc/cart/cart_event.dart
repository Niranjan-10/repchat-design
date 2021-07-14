part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class AddButtonClickedEvent extends CartEvent {
  final ProductDemo? product;

  AddButtonClickedEvent({this.product});
}

class CountIncrementEvent extends CartEvent {
  final ProductDemo? product;

  CountIncrementEvent({this.product});
}

class CountDecrementEvent extends CartEvent {
  final ProductDemo? product;

  CountDecrementEvent({this.product});
}
