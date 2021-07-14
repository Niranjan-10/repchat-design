part of 'dentiumcart_bloc.dart';

@immutable
class DentiumcartState {
  final int? cartCount;

  final double? total;
  final List<ProductType>? productsInCart;

  DentiumcartState({this.cartCount, this.total, this.productsInCart});
}
