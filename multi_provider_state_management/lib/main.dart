import 'package:multi_provider_state_management/balance.dart';
import 'package:multi_provider_state_management/cart.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Balance>(create: (context) => Balance()),
          ChangeNotifierProvider<Cart>(create: (context) => Cart()),
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Balance>(
            builder: (context, balance, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                onPressed: () {
                  if (balance.money >= 500) {
                    cart.quantity += 1;
                    balance.money -= 500;
                  }
                },
                child: Icon(Icons.shopping_cart),
                backgroundColor: Colors.purple[100],
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.pink,
            title: Text('Multi Provider State Management'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Balance'),
                    Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<Balance>(
                          builder: (context, balance, _) => Text(
                            balance.money.toString(),
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.purple[100],
                          border: Border.all(color: Colors.purple, width: 2)),
                    )
                  ],
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: (context, cart, _) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Apple Pie (500) x' + cart.quantity.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            (500 * cart.quantity).toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  height: 30,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 2)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
