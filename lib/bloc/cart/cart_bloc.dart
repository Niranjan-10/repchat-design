import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:repchat_design/model/product.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final List<ProductDemo>? products;
  int? cartCount;
  double? total;

  CartBloc({this.products, this.cartCount, this.total})
      : super(
            CartState(products: products, cartCount: cartCount, total: total));

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    if (event is AddButtonClickedEvent) {
      int index = this.products!.indexOf(event.product!);
      this.products![index].isChecked = true;

      this.products![index].count = this.products![index].count! + 1;

      this.cartCount = this.cartCount! + 1;
      this.total = state.total! + this.products![index].price!.toDouble();

      print("Working");

      yield CartState(
          products: this.products,
          cartCount: this.cartCount,
          total: this.total);
    } else if (event is CountIncrementEvent) {
      int index = this.products!.indexOf(event.product!);
      this.products![index].count = this.products![index].count! + 1;
      this.cartCount = this.cartCount! + 1;

      this.total = this.total! + this.products![index].price!.toDouble();

      yield CartState(
          products: this.products,
          cartCount: this.cartCount,
          total: this.total);
    } else if (event is CountDecrementEvent) {
      int index = this.products!.indexOf(event.product!);
      this.products![index].count = this.products![index].count! - 1;
      this.total = this.total! - this.products![index].price!.toDouble();
      this.cartCount = this.cartCount! - 1;

      if (this.products![index].count! <= 0) {
        // int addedListindex = this.addedProducts!.indexOf(event.product!);
        // this.products![index].isChecked = false;
      }

      yield CartState(
          products: this.products,
          cartCount: this.cartCount,
          total: this.total);
    }
  }
}
