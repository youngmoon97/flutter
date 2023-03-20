import 'package:flutter/foundation.dart';

class CheckController extends ChangeNotifier{
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  void change(){
    _isChecked = !_isChecked;
    notifyListeners(); //Provider에서 값을 바꿀때는 알려줘야함
  }

}
