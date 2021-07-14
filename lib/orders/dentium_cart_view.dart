import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repchat_design/bloc/dentium_cart/bloc/dentiumcart_bloc.dart';

class DentiumCartView extends StatelessWidget {
  const DentiumCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<DentiumcartBloc, DentiumcartState>(
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
    );
  }
}
