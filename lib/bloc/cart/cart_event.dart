part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class AddButtonClickedEvent extends CartEvent {
  final Product? product;

  AddButtonClickedEvent({this.product});
}

class CountIncrementEvent extends CartEvent {
  final Product? product;

  CountIncrementEvent({this.product});
}

class CountDecrementEvent extends CartEvent {
  final Product? product;

  CountDecrementEvent({this.product});
}
