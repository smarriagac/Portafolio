import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app/my_app.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}
