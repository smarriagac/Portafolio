import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeProvider = StateProvider<int>((ref) => 0);

final homeScrollController = ChangeNotifierProvider<ScrollController>(
  (ref) => ScrollController(),
);

class ScrollController extends ChangeNotifier {
  final homeviewController = PageController();

  int _page = 0;

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }

  void onScrollViewPage(int i) {
    page = i;
    notifyListeners();
  }
}
