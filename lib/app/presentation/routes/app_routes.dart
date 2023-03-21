import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../my_app.dart';
import '../modules/home/view/home_view.dart';
import '../modules/sections/view/sections_four_view.dart';
import '../modules/sections/view/sections_one_view.dart';
import '../modules/sections/view/sections_three_view.dart';
import '../modules/sections/view/sections_two_view.dart';
import 'routes.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _homeNavigator = GlobalKey(debugLabel: 'home');

mixin RouterMixin on State<MyApp> {
  final _router = GoRouter(
    navigatorKey: _rootNavigator,
    initialLocation: '/inicio',
    routes: [
      ShellRoute(
        navigatorKey: _homeNavigator,
        builder: (_, state, child) {
          return HomeView(body: child);
        },
        routes: [
          GoRoute(
            path: '/inicio',
            name: Routes.INICIO,
            pageBuilder: (_, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const SectionOneView(),
              );
            },
          ),
          GoRoute(
            path: '/acercade',
            name: Routes.ACERDADE,
            pageBuilder: (_, state) => NoTransitionPage(
              key: state.pageKey,
              child: const SectionTwoView(),
            ),
          ),
          GoRoute(
            path: '/portafolio',
            name: Routes.PORTAFOLIO,
            pageBuilder: (_, state) => NoTransitionPage(
              key: state.pageKey,
              child: const SectionThreeView(),
            ),
          ),
          GoRoute(
            path: '/contactos',
            name: Routes.CONTACTOS,
            pageBuilder: (_, state) => NoTransitionPage(
              key: state.pageKey,
              child: const SectionFourView(),
            ),
          ),
        ],
      )
    ],
  );
  GoRouter get router => _router;
}
