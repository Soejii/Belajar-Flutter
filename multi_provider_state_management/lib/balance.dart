import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class Balance with ChangeNotifier {
  int _money = 10000;

  int get money => _money;

  set money(int mny) {
    _money = mny;

    notifyListeners();
  }
}
