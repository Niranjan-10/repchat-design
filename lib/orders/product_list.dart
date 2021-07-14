import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:repchat_design/bloc/cart/cart_bloc.dart';
import 'package:repchat_design/bloc/dentium_cart/bloc/dentiumcart_bloc.dart';
import 'package:repchat_design/model/dentium_product.dart';
import 'package:repchat_design/orders/dentium_cart_view.dart';
// import 'package:repchat_design/model/product.dart';
// import 'package:repchat_design/orders/cart_view.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<DentiumcartBloc, DentiumcartState>(
              builder: (context, state) {
            if (state.cartCount == 0) {
              return Icon(
                Icons.shopping_basket_outlined,
              );
            }

            return Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DentiumCartView()));
                },
                child: Badge(
                  badgeColor: Colors.amberAccent,
                  badgeContent: Text(
                    state.cartCount.toString(),
                  ),
                  child: Icon(
                    Icons.shopping_basket_outlined,
                  ),
                ),
              ),
            );
          })
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: dentiumProduct.productCategories!.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductRangeList(
                      productRangeList:
                          dentiumProduct.productCategories![index].productRange,
                    ),
                  ),
                );
              },
              child: Container(
                child: Text(
                    dentiumProduct.productCategories![index].name.toString()),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductRangeList extends StatelessWidget {
  final List<ProductRange>? productRangeList;

  const ProductRangeList({Key? key, this.productRangeList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<DentiumcartBloc, DentiumcartState>(
              builder: (context, state) {
            if (state.cartCount == 0) {
              return Icon(Icons.shopping_basket_outlined);
            }

            return Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DentiumCartView()));
                },
                child: Badge(
                  badgeColor: Colors.amberAccent,
                  badgeContent: Text(
                    state.cartCount.toString(),
                  ),
                  child: Icon(
                    Icons.shopping_basket_outlined,
                  ),
                ),
              ),
            );
          })
        ],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: productRangeList!.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(productRangeList![index].name!),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductTypeList(
                                  productTypeList:
                                      productRangeList![index].productType,
                                )));
                  },
                ),
              );
            }),
      ),
    );
  }
}

class ProductTypeList extends StatefulWidget {
  final List<ProductType>? productTypeList;
  const ProductTypeList({Key? key, this.productTypeList}) : super(key: key);

  @override
  _ProductTypeListState createState() => _ProductTypeListState();
}

class _ProductTypeListState extends State<ProductTypeList> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    context.read<DentiumcartBloc>().add(AddingDentiumProducts(
          products: widget.productTypeList,
        ));

    return Scaffold(
        appBar: AppBar(
          actions: [
            BlocBuilder<DentiumcartBloc, DentiumcartState>(
                builder: (context, state) {
              if (state.cartCount == 0) {
                return Icon(Icons.shopping_basket_outlined);
              }

              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DentiumCartView()));
                  },
                  child: Badge(
                    badgeColor: Colors.amberAccent,
                    badgeContent: Text(
                      state.cartCount.toString(),
                    ),
                    child: Icon(
                      Icons.shopping_basket_outlined,
                    ),
                  ),
                ),
              );
            })
          ],
        ),
        body: Container(
            child: Stepper(
          type: StepperType.horizontal,
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
              });
            }
          },
          onStepContinue: () {
            if (_index <= 0) {
              setState(() {
                _index += 1;
              });
            }
          },
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          steps: <Step>[
            Step(
              title: const Text('Step 1 title'),
              content: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('Content for Step 1')),
            ),
            const Step(
              title: Text('Step 2 title'),
              content: Text('Content for Step 2'),
            ),
          ],
        ))
        // Container(
        //   child: BlocBuilder<DentiumcartBloc, DentiumcartState>(
        //     builder: (context, state) {
        //       return ListView.builder(
        //         itemCount: productTypeList!.length,
        //         itemBuilder: (context, index) {
        //           return Card(
        //             child: Container(
        //               padding:
        //                   EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
        //               child: ListTile(
        //                 trailing: ElevatedButton(
        //                   child: Text("Add"),
        //                   onPressed: () {
        //                     context.read<DentiumcartBloc>().add(
        //                         AddButtonClickedEvent(
        //                             product: productTypeList![index]));
        //                   },
        //                 ),
        //                 title: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text("${productTypeList![index].name}"),
        //                     SizedBox(
        //                       height: 8.0,
        //                     ),
        //                     Text("${productTypeList![index].wareHouseCode}"),
        //                     SizedBox(
        //                       height: 8.0,
        //                     ),
        //                     Text("${productTypeList![index].articleNumber}"),
        //                     SizedBox(
        //                       height: 8.0,
        //                     ),
        //                     Text("${productTypeList![index].mrp}"),
        //                     SizedBox(
        //                       height: 8.0,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           );
        //         },
        //       );
        //     },
        //   ),
        // ),
        );
  }
}

// class ProductItem extends StatefulWidget {
//   const ProductItem({Key? key}) : super(key: key);

//   @override
//   _ProductItemState createState() => _ProductItemState();
// }

// class _ProductItemState extends State<ProductItem> {
//   List<ProductDemo> products = [
//     ProductDemo(name: "First", price: 20, isChecked: false, count: 0),
//     ProductDemo(name: "Second", price: 200, isChecked: false, count: 0),
//     ProductDemo(name: "Third", price: 120, isChecked: false, count: 0),
//     ProductDemo(name: "Fourth", price: 30, isChecked: false, count: 0),
//     ProductDemo(name: "Fifth", price: 40, isChecked: false, count: 0),
//     ProductDemo(name: "Sixth", price: 60, isChecked: false, count: 0),
//     ProductDemo(name: "Seventh", price: 80, isChecked: false, count: 0),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     var cartBloc = CartBloc(products: products, cartCount: 0, total: 0);

//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           BlocBuilder(
//               bloc: cartBloc,
//               builder: (context, state) {
//                 if (state is CartState) {
//                   if (state.cartCount == 0) {
//                     return Icon(Icons.shopping_cart_outlined);
//                   } else {
//                     return Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 15.0, vertical: 10.0),
//                       child: Badge(
//                         badgeColor: Colors.amberAccent,
//                         badgeContent: Text("${state.cartCount}"),
//                         child: GestureDetector(
//                           child: Icon(Icons.shopping_cart_outlined),
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => CartView(
//                                   cartBloc: cartBloc,
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     );
//                   }
//                 }
//                 return Icon(Icons.shopping_cart_outlined);
//               })
//         ],
//       ),
//       body: BlocProvider<CartBloc>(
//         create: (context) => cartBloc,
//         child: Container(
//           child: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
//             if (state is CartState) {
//               return Stack(
//                 children: [
//                   ListView.builder(
//                     itemCount: state.products!.length,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text(state.products![index].name.toString()),
//                         trailing: state.products![index].isChecked! == true &&
//                                 state.products![index].count! >= 1
//                             ? Container(
//                                 width: 100,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     GestureDetector(
//                                       child: Icon(Icons.remove_circle),
//                                       onTap: () {
//                                         context.read<CartBloc>().add(
//                                             CountDecrementEvent(
//                                                 product:
//                                                     state.products![index]));
//                                       },
//                                     ),
//                                     SizedBox(
//                                       height: 10.0,
//                                     ),
//                                     Expanded(
//                                       child: Text(
//                                         "${state.products![index].count}",
//                                         textAlign: TextAlign.center,
//                                       ),
//                                       flex: 2,
//                                     ),
//                                     SizedBox(
//                                       height: 10.0,
//                                     ),
//                                     GestureDetector(
//                                       child: Icon(Icons.add_circle),
//                                       onTap: () {
//                                         context.read<CartBloc>().add(
//                                             CountIncrementEvent(
//                                                 product:
//                                                     state.products![index]));
//                                       },
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             : ElevatedButton(
//                                 onPressed: () {
//                                   print("Working here=========>");
//                                   context.read<CartBloc>().add(
//                                       AddButtonClickedEvent(
//                                           product: state.products![index]));
//                                 },
//                                 child: Text("Add")),
//                       );
//                     },
//                   ),
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: state.cartCount! > 0
//                         ? Container(
//                             padding: EdgeInsets.symmetric(vertical: 12.0),
//                             width: double.infinity,
//                             height: 50.0,
//                             color: Colors.amberAccent,
//                             child: Text(
//                               "${state.cartCount} items added",
//                               textAlign: TextAlign.center,
//                             ),
//                           )
//                         : SizedBox(),
//                   )
//                 ],
//               );
//             }

//             return ListView.builder(
//                 itemCount: products.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(products[index].name.toString()),
//                     trailing: products[index].isChecked! == true
//                         ? Text("1")
//                         : ElevatedButton(
//                             onPressed: () {
//                               context.read<CartBloc>().add(
//                                   AddButtonClickedEvent(
//                                       product: products[index]));
//                             },
//                             child: Text("Add")),
//                   );
//                 });
//           }),
//         ),
//       ),
//     );
//   }
// }
