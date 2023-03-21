import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../my_app.dart';
import '../modules/home/view/home_view.dart';
import 'routes.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _homeNavigator = GlobalKey(debugLabel: 'home');

mixin RouterMixin on State<MyApp> {
  final _router = GoRouter(
    navigatorKey: _rootNavigator,
    initialLocation: '/inicio',
    routes: [
      // GoRoute(
      //   name: Routes.HOME,
      //   path: '/home',
      //   builder: (_, state) => HomeView(key: state.pageKey),
      // ),
      ShellRoute(
        navigatorKey: _homeNavigator,
        builder: (_, state, child) => child,
        routes: [
          GoRoute(
            path: '/inicio',
            name: Routes.INICIO,
            pageBuilder: (_, state) => NoTransitionPage(
              child: HomeView(
                key: state.pageKey,
              ),
            ),
          ),
          GoRoute(
            path: '/acercade',
            name: Routes.ACERDADE,
            pageBuilder: (_, state) => NoTransitionPage(
              child: HomeView(
                key: state.pageKey,
              ),
            ),
          ),
          GoRoute(
            path: '/portafolio',
            name: Routes.PORTAFOLIO,
            pageBuilder: (_, state) => NoTransitionPage(
              child: HomeView(
                key: state.pageKey,
              ),
            ),
          ),
          GoRoute(
            path: '/contactos',
            name: Routes.CONTACTOS,
            pageBuilder: (_, state) => NoTransitionPage(
              child: HomeView(
                key: state.pageKey,
              ),
            ),
          ),
        ],
      )
    ],
  );

  GoRouter get router => _router;
}
