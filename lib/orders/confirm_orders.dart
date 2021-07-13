import 'package:flutter/material.dart';

class ConfirmOrders extends StatefulWidget {
  const ConfirmOrders({Key? key}) : super(key: key);

  @override
  _ConfirmOrdersState createState() => _ConfirmOrdersState();
}

class _ConfirmOrdersState extends State<ConfirmOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Check Out",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 15, right: 15.0, top: 15.0),
                decoration: BoxDecoration(
                    color: Color(0xffa4c53a),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0))),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              "assets/doc2.png",
                              width: 80,
                              height: 80,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dental Abutment  > Angled Abutment",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "C020100523",
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 15.0),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "AAB154515HG",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "₹ 120",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.remove_outlined,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Icon(
                                        Icons.add_outlined,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              "assets/doc2.png",
                              width: 80,
                              height: 80,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dental Abutment  > Angled Abutment",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "C020100523",
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 15.0),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "AAB154515HG",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "₹ 120",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.remove_outlined,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Icon(
                                        Icons.add_outlined,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              "assets/doc2.png",
                              width: 80,
                              height: 80,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dental Abutment  > Angled Abutment",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "C020100523",
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 15.0),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "AAB154515HG",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "₹ 120",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.remove_outlined,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Icon(
                                        Icons.add_outlined,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              "assets/doc2.png",
                              width: 80,
                              height: 80,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dental Abutment  > Angled Abutment",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "C020100523",
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 15.0),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "AAB154515HG",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "₹ 120",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.remove_outlined,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Icon(
                                        Icons.add_outlined,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              "assets/doc2.png",
                              width: 80,
                              height: 80,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dental Abutment  > Angled Abutment",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "C020100523",
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 15.0),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "AAB154515HG",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "₹ 120",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.remove_outlined,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Icon(
                                        Icons.add_outlined,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Billing Address",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffa4c53a))),
                        Text("change",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffa4c53a))),
                      ],
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                          "Aksya Nagar 1st Block 1st Cross \nRamaurty nagar, Banglore-560016"),
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Shipping Address",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffa4c53a)),
                          ),
                          Text("Change",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffa4c53a))),
                        ],
                      ),
                      subtitle: Container(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                            "Aksya Nagar 1st Block 1st Cross \nRamaurty nagar, Banglore-560016"),
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 20.0, left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "₹ 600",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffa4c53a)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0.0),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffa4c53a))),
                      onPressed: () {},
                      child: Text("Submit"),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
