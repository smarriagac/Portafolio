import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../global/extension/build_context_ext.dart';
import '../controller/home_controller.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final count = ref.watch(homeProvider);
    log('ME IMPRIMI');

    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            left: 0,
            right: 0,
            child: NavBar(),
          ),
          Positioned(
            top: kToolbarHeight,
            height: context.hg - kToolbarHeight,
            width: context.wd,
            child: const BodyHome(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => ref.read(homeProvider.notifier).state++),
    );
  }
}

class BodyHome extends ConsumerWidget {
  const BodyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ref.read(homeScrollController).homeviewController;

    return PageView(
      controller: scrollController,
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      scrollDirection: Axis.vertical,
      onPageChanged: (value) => log('$value'),
      children: [
        Container(color: Colors.green),
        Container(color: Colors.orange),
        Container(color: Colors.yellow),
        Container(color: Colors.black26),
      ],
    );
  }
}

class NavBar extends ConsumerWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(homeScrollController);

    return SizedBox(
      height: kToolbarHeight,
      // color: Colors.red,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MouseRegion(
            cursor: MouseCursor.uncontrolled,
            onHover: (event) {
              if (event.distanceMax.isFinite) {
                controller.onScrollViewPage(1);
              }
            },
            child: const Text('Inicio'),
          ),
          const SizedBox(width: 20),
          const Text('Acerca de mi'),
          const SizedBox(width: 20),
          const Text('Portafolio'),
          const SizedBox(width: 20),
          const Text('Contacto'),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
