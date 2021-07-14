part of 'dentiumcart_bloc.dart';

@immutable
abstract class DentiumcartEvent {}

class AddButtonClickedEvent extends DentiumcartEvent {
  final ProductType? product;

  AddButtonClickedEvent({this.product});
}

class CountIncrementEvent extends DentiumcartEvent {
  final ProductType? product;

  CountIncrementEvent({this.product});
}

class CountDecrementEvent extends DentiumcartEvent {
  final ProductType? product;

  CountDecrementEvent({this.product});
}

class AddingDentiumProducts extends DentiumcartEvent {
  final List<ProductType>? products;

  AddingDentiumProducts({this.products});
}
