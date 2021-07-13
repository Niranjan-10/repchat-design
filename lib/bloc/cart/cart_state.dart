part of 'cart_bloc.dart';

@immutable
class CartState {
  final List<Product>? products;
  final int? cartCount;

  double? total;

  CartState({this.products, this.cartCount, this.total});
}
