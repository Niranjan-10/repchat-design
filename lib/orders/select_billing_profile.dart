import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

class SelectBillingProfile extends StatefulWidget {
  const SelectBillingProfile({Key? key}) : super(key: key);

  @override
  _SelectBillingProfileState createState() => _SelectBillingProfileState();
}

class _SelectBillingProfileState extends State<SelectBillingProfile> {
  var billingAddressList = [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClayContainer(
        child: ListTile(
          title: Text("Sector 65,Guragon"),
          subtitle: Text("Haryana"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClayContainer(
        child: ListTile(
          title: Text("Sector 65,Guragon"),
          subtitle: Text("Haryana"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClayContainer(
        child: ListTile(
          title: Text("Sector 65,Guragon"),
          subtitle: Text("Haryana"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClayContainer(
        child: ListTile(
          title: Text("Sector 65,Guragon"),
          subtitle: Text("Haryana"),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [for (var i in billingAddressList) i],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
