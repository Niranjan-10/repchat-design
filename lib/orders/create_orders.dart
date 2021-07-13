import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:repchat_design/orders/select_billing_profile.dart';

class CreateOrders extends StatefulWidget {
  const CreateOrders({Key? key}) : super(key: key);

  @override
  _CreateOrdersState createState() => _CreateOrdersState();
}

class _CreateOrdersState extends State<CreateOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Column(
          children: [
            ClayContainer(
              width: double.infinity,
              height: 100.0,
              borderRadius: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    VerticalDivider(
                      thickness: 1.5,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mahesh Dental Clinic",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Id  : 09901910 ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ExpansionTile(
                      title: Text("Fixture"),
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: ExpansionTile(
                            title: Text("New SuperLine 2"),
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 5, child: Text("FXS3607")),
                                    Expanded(child: TextField()),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 5, child: Text("FXS3607")),
                                    Expanded(child: TextField()),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 5, child: Text("FXS3607")),
                                    Expanded(child: TextField()),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 5, child: Text("FXS3607")),
                                    Expanded(child: TextField()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("GBR Healing Abutment"),
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: ExpansionTile(
                            title: Text("New SuperLine II"),
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 5, child: Text("GBHAB3335")),
                                    Expanded(child: TextField()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("GBR Healing Abutment"),
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: ExpansionTile(
                            title: Text("New SuperLine II"),
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 5, child: Text("GBHAB3335")),
                                    Expanded(child: TextField()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("GBR Healing Abutment"),
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: ExpansionTile(
                            title: Text("New SuperLine II"),
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 5, child: Text("GBHAB3335")),
                                    Expanded(child: TextField()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("GBR Healing Abutment"),
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: ExpansionTile(
                            title: Text("New SuperLine II"),
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 5, child: Text("GBHAB3335")),
                                    Expanded(child: TextField()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("GBR Healing Abutment"),
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: ExpansionTile(
                            title: Text("New SuperLine II"),
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 5, child: Text("GBHAB3335")),
                                    Expanded(child: TextField()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectBillingProfile()));
                },
                child: Text("Next"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
