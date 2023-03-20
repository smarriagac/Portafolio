import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../../my_app.dart';
import '../modules/home/view/home_view.dart';
import 'routes.dart';

mixin RouterMixin on State<MyApp> {
  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: Routes.HOME,
        path: '/',
        builder: (_, __) => const HomeView(),
      )
    ],
  );

  GoRouter get router => _router;
}
