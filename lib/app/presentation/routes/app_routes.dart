import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:portafolio/app/my_app.dart';
import 'package:portafolio/app/presentation/modules/home/view/home_view.dart';
import 'package:portafolio/app/presentation/routes/routes.dart';

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
