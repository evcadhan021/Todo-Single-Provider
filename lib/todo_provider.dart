import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  final List<String> _animals = [];
  List<String> get animals => _animals;

  add(String n) {
    _animals.add(n);
    notifyListeners();
  }

  remove(int index) {
    // .remove(value) untuk tipe String | .removeAt(index) untuik tipe Index
    _animals.removeAt(index);
    notifyListeners();
  }
}
