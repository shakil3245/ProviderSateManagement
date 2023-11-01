import 'package:flutter/cupertino.dart';

class FavProvider with ChangeNotifier{
  List<int> _selectedIndex=[];
  List<int> get seletcedIndex => _selectedIndex;
 void addSelectedIndex(int val){
   _selectedIndex.add(val);
   notifyListeners();
 }

  void remooveSelectedIndex(int val){
    _selectedIndex.remove(val);
    notifyListeners();
  }


}