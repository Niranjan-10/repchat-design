import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repchat_design/bloc/cart/cart_bloc.dart';
import 'package:repchat_design/model/product.dart';
import 'package:repchat_design/orders/cart_view.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductItem()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("He'd have you all unravel at the"),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductItem()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("He'd have you all unravel at the"),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductItem()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("He'd have you all unravel at the"),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductItem()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("He'd have you all unravel at the"),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductItem()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("He'd have you all unravel at the"),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductItem()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text("He'd have you all unravel at the"),
                color: Colors.teal[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatefulWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  List<Product> products = [
    Product(name: "First", price: 20, isChecked: false, count: 0),
    Product(name: "Second", price: 200, isChecked: false, count: 0),
    Product(name: "Third", price: 120, isChecked: false, count: 0),
    Product(name: "Fourth", price: 30, isChecked: false, count: 0),
    Product(name: "Fifth", price: 40, isChecked: false, count: 0),
    Product(name: "Sixth", price: 60, isChecked: false, count: 0),
    Product(name: "Seventh", price: 80, isChecked: false, count: 0),
  ];

  @override
  Widget build(BuildContext context) {
    var cartBloc = CartBloc(products: products, cartCount: 0, total: 0);

    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder(
              bloc: cartBloc,
              builder: (context, state) {
                if (state is CartState) {
                  if (state.cartCount == 0) {
                    return Icon(Icons.shopping_cart_outlined);
                  } else {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10.0),
                      child: Badge(
                        badgeColor: Colors.amberAccent,
                        badgeContent: Text("${state.cartCount}"),
                        child: GestureDetector(
                          child: Icon(Icons.shopping_cart_outlined),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CartView(
                                  cartBloc: cartBloc,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  }
                }
                return Icon(Icons.shopping_cart_outlined);
              })
        ],
      ),
      body: BlocProvider<CartBloc>(
        create: (context) => cartBloc,
        child: Container(
          child: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
            if (state is CartState) {
              return Stack(
                children: [
                  ListView.builder(
                    itemCount: state.products!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state.products![index].name.toString()),
                        trailing: state.products![index].isChecked! == true &&
                                state.products![index].count! >= 1
                            ? Container(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      child: Icon(Icons.remove_circle),
                                      onTap: () {
                                        context.read<CartBloc>().add(
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
                                        context.read<CartBloc>().add(
                                            CountIncrementEvent(
                                                product:
                                                    state.products![index]));
                                      },
                                    ),
                                  ],
                                ),
                              )
                            : ElevatedButton(
                                onPressed: () {
                                  print("Working here=========>");
                                  context.read<CartBloc>().add(
                                      AddButtonClickedEvent(
                                          product: state.products![index]));
                                },
                                child: Text("Add")),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: state.cartCount! > 0
                        ? Container(
                            padding: EdgeInsets.symmetric(vertical: 12.0),
                            width: double.infinity,
                            height: 50.0,
                            color: Colors.amberAccent,
                            child: Text(
                              "${state.cartCount} items added",
                              textAlign: TextAlign.center,
                            ),
                          )
                        : SizedBox(),
                  )
                ],
              );
            }

            return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(products[index].name.toString()),
                    trailing: products[index].isChecked! == true
                        ? Text("1")
                        : ElevatedButton(
                            onPressed: () {
                              context.read<CartBloc>().add(
                                  AddButtonClickedEvent(
                                      product: products[index]));
                            },
                            child: Text("Add")),
                  );
                });
          }),
        ),
      ),
    );
  }
}
