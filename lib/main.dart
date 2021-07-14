import 'package:badges/badges.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repchat_design/bloc/dentium_cart/bloc/dentiumcart_bloc.dart';
import 'package:repchat_design/orders/billing_profiles.dart';
import 'package:animations/animations.dart';
import 'package:repchat_design/orders/product_list.dart';

import 'orders/dentium_cart_view.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (BuildContext context) =>
          DentiumcartBloc(productsInCart: [], cartCount: 0, total: 0),
    )
  ], child: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      theme: ThemeData(primaryColor: Color(0xffa4c53a)),
    );
  }
}

const double _fabDimension = 56.0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      floatingActionButton: OpenContainer(
        transitionDuration: Duration(milliseconds: 600),
        openBuilder: (BuildContext context, _) {
          return ProductList();
        },
        closedElevation: 6.0,
        closedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(_fabDimension / 2),
          ),
        ),
        closedColor: Theme.of(context).colorScheme.secondary,
        closedBuilder: (context, openContainer) {
          return SizedBox(
            height: _fabDimension,
            width: _fabDimension,
            child: Center(
              child: Icon(
                Icons.add,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          );
        },
      ),

      // FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => CreateOrders()));
      //   },
      //   backgroundColor: Color(0xffa4c53a),
      //   child: Icon(
      //     Icons.add,
      //     color: Colors.white,
      //   ),
      // ),
      body: Container(
        child: Stack(
          children: [
            FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(bottom: 150.0),
                color: Colors.white,
              ),
            ),
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.4,
              child: Container(
                child: Image.asset(
                  "assets/profile_bg.png",
                  fit: BoxFit.cover,
                ),
                color: Colors.green,
              ),
            ),
            Positioned(
              top: 100.0,
              left: 50.0,
              right: 50.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                height: 380.0,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/doc2.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Niranjan Naik",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "RID215343",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10.0),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Active Orders "),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 30,
                                  width: 30,
                                  child: Center(
                                      child: Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle,
                                      color: Color(0xffa4c53a)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Completed Orders "),
                                Container(
                                  height: 30,
                                  width: 30,
                                  padding: EdgeInsets.all(2.5),
                                  child: Center(
                                      child: Text(
                                    "122",
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle,
                                      color: Color(0xffa4c53a)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xffa4c53a),
                            child: Icon(
                              Icons.chat,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffa4c53a)),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(145.0),
                        bottomRight: Radius.circular(145.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.5,
                          spreadRadius: 3.0,
                          offset: Offset(1.0, 3.0))
                    ]),
              ),
            ),
            Positioned(
              top: 500.0,
              left: 50,
              right: 50,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                // height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClayContainer(
                      borderRadius: 10.0,
                      spread: 3,
                      curveType: CurveType.none,
                      child: ListTile(
                        onTap: () {
                          showProfileBottomSheet();
                        },
                        trailing: Icon(Icons.person_add_alt_1_outlined),
                        title: Text("Profile"),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),

                    _OpenContainerWrapper(
                        closedBuilder:
                            (BuildContext context, VoidCallback openContainer) {
                          return BillingProfileButton(openContainer);
                        },
                        transitionType: ContainerTransitionType.fade)

                    // ClayContainer(
                    //   borderRadius: 10.0,
                    //   curveType: CurveType.none,
                    //   spread: 3,
                    //   child: ListTile(
                    //     onTap: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (context) => BillingProfile()));
                    //     },
                    //     trailing: Icon(Icons.account_balance_outlined),
                    //     title: Text("Billing Profiles"),
                    //   ),
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void showProfileBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
        ),
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  enabled: false,
                  initialValue: "+91 8118030633",
                  decoration: InputDecoration(
                    filled: false,
                    isDense: true,
                    labelText: "Primary Phone Number",
                    labelStyle: TextStyle(color: Color(0xffa4c53a)),
                    fillColor: Colors.grey.shade300,
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Colors.redAccent)),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  initialValue: "+91 8118030633",
                  enabled: false,
                  maxLines: 1,
                  decoration: InputDecoration(
                    filled: false,
                    isDense: true,
                    labelText: "Secondary Phone Number",
                    labelStyle: TextStyle(color: Color(0xffa4c53a)),
                    fillColor: Colors.grey.shade300,
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Colors.redAccent)),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  initialValue: "niranjan@gmail.com",
                  enabled: false,
                  maxLines: 1,
                  decoration: InputDecoration(
                    filled: false,
                    isDense: true,
                    labelText: "Email",
                    labelStyle: TextStyle(color: Color(0xffa4c53a)),
                    fillColor: Colors.grey.shade300,
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Color(0xffa4c53a))),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(width: 0.8, color: Colors.redAccent)),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class _OpenContainerWrapper extends StatelessWidget {
  const _OpenContainerWrapper({
    required this.closedBuilder,
    required this.transitionType,
  });

  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: transitionType,
      transitionDuration: Duration(milliseconds: 600),
      openBuilder: (BuildContext context, VoidCallback _) {
        return const BillingProfile();
      },
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}

class BillingProfileButton extends StatelessWidget {
  final VoidCallback openContainer;

  BillingProfileButton(@required this.openContainer);

  @override
  Widget build(BuildContext context) {
    return _InkWellOverlay(
      openContainer: openContainer,
      child: Text("Billing Profile"),
    );
  }
}

class _InkWellOverlay extends StatelessWidget {
  final VoidCallback? openContainer;

  final Widget? child;

  const _InkWellOverlay({
    this.openContainer,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      child: ListTile(
        title: child,
        onTap: openContainer,
      ),
    );
  }
}
