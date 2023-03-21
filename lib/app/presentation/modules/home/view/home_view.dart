import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../global/app_color.dart';
import '../../../global/extension/build_context_ext.dart';
import '../../../routes/routes.dart';
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
    final items = <String>[
      'Inicio',
      'Acerca de mi',
      'Portafolio',
      'Contacto',
    ];

    return SizedBox(
      height: kToolbarHeight,
      // color: Colors.red,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: List.generate(
            items.length,
            (i) => ItemNavBar(
              title: items[i],
              index: i,
            ),
          ),
        ),
      ),
    );
  }
}

class ItemNavBar extends HookConsumerWidget {
  const ItemNavBar({super.key, this.title = 'Inicio', required this.index});
  final String title;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onIsMouseHover = useState(false);

    final String routesNamed = {
      0: Routes.INICIO,
      1: Routes.ACERDADE,
      2: Routes.PORTAFOLIO,
      3: Routes.CONTACTOS,
    }[index]!;

    return MouseRegion(
      hitTestBehavior: HitTestBehavior.translucent,
      cursor: SystemMouseCursors.click,
      onHover: (event) => onIsMouseHover.value = true,
      onExit: (event) => onIsMouseHover.value = false,
      child: GestureDetector(
        onTap: () {
          context.goNamed(routesNamed);
          ref.read(homeScrollController).onScrollViewPage(index);
        },
        child: AnimatedContainer(
          decoration: BoxDecoration(
              color: onIsMouseHover.value
                  ? AppColors.secondaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8)),
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.all(5).copyWith(left: 20, right: 20),
          child: Text(
            title,
            // style: context.textTheme.titleMedium!.copyWith(
            //   color: !onIsMouseHover.value
            //       ? AppColors.white
            //       : AppColors.secondaryColor,
            // ),
          ),
        ),
      ),
    );
  }
}
