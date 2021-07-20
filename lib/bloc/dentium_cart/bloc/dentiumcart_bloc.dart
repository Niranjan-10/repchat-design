import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:repchat_design/model/dentium_product.dart';

part 'dentiumcart_event.dart';
part 'dentiumcart_state.dart';

class DentiumcartBloc extends Bloc<DentiumcartEvent, DentiumcartState> {
  int? cartCount;
  double? total;
  final List<ProductType>? productsInCart;

  DentiumcartBloc({this.cartCount, this.total, this.productsInCart})
      : super(DentiumcartState(
            cartCount: cartCount,
            total: total,
            productsInCart: productsInCart));

  @override
  Stream<DentiumcartState> mapEventToState(
    DentiumcartEvent event,
  ) async* {
    if (event is AddButtonClickedEvent) {
      event.product!.isChecked = true;

      this.cartCount = this.cartCount! + 1;
      this.total = state.total! + event.product!.mrp!.toDouble();

      print("Working");

      int index = this.productsInCart!.indexOf(event.product!);
      if (index != -1) {
        this.productsInCart![index].count =
            this.productsInCart![index].count! + 1;
      } else {
        event.product!.count = event.product!.count! + 1;
        this.productsInCart!.add(event.product!);
      }

      print(state.productsInCart);
      yield DentiumcartState(
          productsInCart: this.productsInCart,
          cartCount: this.cartCount,
          total: this.total);
    }
    if (event is CountDecrementEvent) {
      int index = this.productsInCart!.indexOf(event.product!);

      this.productsInCart![index].count =
          this.productsInCart![index].count! - 1;
      this.total = this.total! - this.productsInCart![index].mrp!.toDouble();
      this.cartCount = this.cartCount! - 1;

      if (this.productsInCart![index].count! <= 0) {
        this.productsInCart!.removeAt(index);
      }

      if (this.total! <= 0) {
        this.total = 0;
      }

      yield DentiumcartState(
          productsInCart: this.productsInCart,
          cartCount: this.cartCount,
          total: this.total);
    }
    if (event is CountIncrementEvent) {
      int index = this.productsInCart!.indexOf(event.product!);

      this.productsInCart![index].count =
          this.productsInCart![index].count! + 1;
      this.total = this.total! + this.productsInCart![index].mrp!.toDouble();
      this.cartCount = this.cartCount! + 1;

      yield DentiumcartState(
          productsInCart: this.productsInCart,
          cartCount: this.cartCount,
          total: this.total);
    }
  }
}
