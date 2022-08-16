import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class Cart with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;

  set quantity(int qty) {
    _quantity = qty;

    notifyListeners();
  }
}
