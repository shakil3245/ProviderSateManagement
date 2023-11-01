import 'package:flutter/cupertino.dart';

class ExampleOnePeovider with ChangeNotifier{
  //declear slider value
  double _value = 1.0;
  double get  value => _value;

  //geting onchage valeue
   void setValue(double val){
     _value = val;
     notifyListeners();
   }




}