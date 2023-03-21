import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeProvider = StateProvider<int>((ref) => 0);

final homeScrollController = ChangeNotifierProvider<ScrollController>(
  (ref) => ScrollController(),
);

class ScrollController extends ChangeNotifier {
  final homeviewController = PageController();

  void onScrollViewPage(int i) {
    homeviewController.animateToPage(
      i,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
