import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class MyScopeModel extends Model{

  int selectedTyep=1;
  String selectedCategory="";
  get selectedTypes=>selectedTyep;
  get selectedCat=>selectedCategory;

  void setSelected(int value)
  {
    selectedTyep=value;
    notifyListeners();
  }
  void setCategory(String value)
  {
    selectedCategory=value;
    notifyListeners();
  }

}