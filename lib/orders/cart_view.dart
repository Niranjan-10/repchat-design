import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repchat_design/bloc/cart/cart_bloc.dart';

class CartView extends StatefulWidget {
  final CartBloc? cartBloc;

  CartView({this.cartBloc});

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            BlocBuilder<CartBloc, CartState>(
              bloc: widget.cartBloc,
              builder: (context, state) {
                return Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.products!.length,
                        itemBuilder: (context, index) {
                          if (state.products![index].isChecked == true &&
                              state.products![index].count! > 0)
                            return ListTile(
                              title: Text(
                                state.products![index].name.toString(),
                                style: TextStyle(color: Colors.black),
                              ),
                              trailing: Container(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      child: Icon(Icons.remove_circle),
                                      onTap: () {
                                        widget.cartBloc!.add(
                                            CountDecrementEvent(
                                                product:
                                                    state.products![index]));
                                      },
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "${state.products![index].count}",
                                        textAlign: TextAlign.center,
                                      ),
                                      flex: 2,
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    GestureDetector(
                                      child: Icon(Icons.add_circle),
                                      onTap: () {
                                        widget.cartBloc!.add(
                                            CountIncrementEvent(
                                                product:
                                                    state.products![index]));
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );

                          return Container();
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
            BlocBuilder<CartBloc, CartState>(
              bloc: widget.cartBloc,
              builder: (context, state) {
                return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                  width: double.infinity,
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total"),
                      Text("${state.total}"),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
