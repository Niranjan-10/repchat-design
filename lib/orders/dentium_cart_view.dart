import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repchat_design/bloc/dentium_cart/bloc/dentiumcart_bloc.dart';

class DentiumCartView extends StatefulWidget {
  const DentiumCartView({Key? key}) : super(key: key);

  @override
  _DentiumCartViewState createState() => _DentiumCartViewState();
}

class _DentiumCartViewState extends State<DentiumCartView> {
  int _index = 0;
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.amberAccent,
                  colorScheme: Theme.of(context)
                      .colorScheme
                      .copyWith(primary: Colors.amberAccent),
                ),
                child: Stepper(
                  controlsBuilder: (BuildContext context,
                      {VoidCallback? onStepContinue,
                      VoidCallback? onStepCancel}) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      margin: EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0, primary: Color(0xffa4c53a)),
                            onPressed: onStepContinue,
                            child: const Text('NEXT'),
                          ),
                          _currentStep > 0
                              ? TextButton(
                                  onPressed: onStepCancel,
                                  child: const Text('BACK'))
                              : SizedBox(),
                        ],
                      ),
                    );
                  },
                  type: stepperType,
                  physics: ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue: continued,
                  onStepCancel: cancel,
                  steps: <Step>[
                    Step(
                      title: new Text('Item In Cart'),
                      content: Column(
                        children: <Widget>[
                          BlocConsumer<DentiumcartBloc, DentiumcartState>(
                            listener: (context, state) {},
                            builder: (context, state) {
                              return Container(
                                height: 500,
                                child: ListView.builder(
                                  itemCount: state.productsInCart!.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(state
                                          .productsInCart![index].name
                                          .toString()),
                                      trailing: Container(
                                        width: 100,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              child: Icon(Icons.remove_circle),
                                              onTap: () {
                                                context
                                                    .read<DentiumcartBloc>()
                                                    .add(CountDecrementEvent(
                                                        product: state
                                                                .productsInCart![
                                                            index]));
                                              },
                                            ),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Expanded(
                                              child: Text(
                                                "${state.productsInCart![index].count}",
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
                                                context
                                                    .read<DentiumcartBloc>()
                                                    .add(CountIncrementEvent(
                                                        product: state
                                                                .productsInCart![
                                                            index]));
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("TOTAL ITEMS: "),
                                BlocBuilder<DentiumcartBloc, DentiumcartState>(
                                  builder: (context, state) {
                                    return Text("${state.cartCount}");
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("TOTAL : "),
                                BlocBuilder<DentiumcartBloc, DentiumcartState>(
                                  builder: (context, state) {
                                    return Text("${state.total} ₹");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: new Text('Address'),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Home Address'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Postcode'),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: new Text('Mobile Number'),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Mobile Number'),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 2
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    if (_currentStep == 0) {
      Navigator.pop(context);
    }

    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}

/*


BlocConsumer<DentiumcartBloc, DentiumcartState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.productsInCart!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.productsInCart![index].name.toString()),
                trailing: Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Icon(Icons.remove_circle),
                        onTap: () {
                          context.read<DentiumcartBloc>().add(
                              CountDecrementEvent(
                                  product: state.productsInCart![index]));
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        child: Text(
                          "${state.productsInCart![index].count}",
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
                          context.read<DentiumcartBloc>().add(
                              CountIncrementEvent(
                                  product: state.productsInCart![index]));
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),

*/
