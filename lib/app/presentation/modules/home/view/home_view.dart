import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../global/app_color.dart';
import '../../../global/extension/build_context_ext.dart';
import '../controller/home_controller.dart';

class HomeView extends ConsumerWidget {
  const HomeView({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final count = ref.watch(homeProvider);

    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            flex: 2,
            child: NavBar(),
          ),
          Expanded(
            flex: 8,
            child: body,
          )
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
      'Inicio two',
      'Inicio three',
      'Inicio four',
    ];

    return SizedBox(
      height: double.maxFinite,
      // color: Colors.red,
      // width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: context.hp(10)),
              const CircleAvatar(maxRadius: 50),
              const SizedBox(height: 20),
              ...List.generate(
                items.length,
                (i) => ItemNavBar(
                  title: items[i],
                  index: i,
                ),
              ),
            ],
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

    final page = ref.watch(homeScrollController).page;

    final String location = GoRouterState.of(context).location;

    final String routesNamed = {
      0: '/inicio',
      1: '/acercade',
      2: '/portafolio',
      3: '/contactos',
    }[index]!;

    return MouseRegion(
      hitTestBehavior: HitTestBehavior.translucent,
      cursor: SystemMouseCursors.click,
      onHover: (event) => onIsMouseHover.value = true,
      onExit: (event) => onIsMouseHover.value = false,
      child: GestureDetector(
        onTap: () {
          context.go(routesNamed);
          // ref.read(homeScrollController).onScrollViewPage(index);
        },
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.bounceInOut,
              width: double.infinity,
              height: 50,
              color: !(location == routesNamed)
                  ? Colors.transparent
                  : AppColors.secondaryColor,
            ),
            Center(
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
                  style: context.textTheme.titleMedium!.copyWith(
                    fontSize: 20,
                    color: (location == routesNamed)
                        ? AppColors.white
                        : AppColors.secondaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
