import 'package:flutter/material.dart';
import 'package:flutterfeb/state%20management/Provider/model/count.dart';

class CounterProvider extends ChangeNotifier {

  final Counter counter = Counter(count: 0);

  void incrementCounter() {
    counter.count++;
    notifyListeners();
  }

  void decrementCounter() {
    counter.count--;
    notifyListeners();
  }
}