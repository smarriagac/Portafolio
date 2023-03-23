import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../generated/translations.g.dart';
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

class NavBar extends HookConsumerWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final changeLanguale = useState(false);

    final items = <String>[
      t.drawell.items.home,
      t.drawell.items.aboutme,
      t.drawell.items.portfolio,
      t.drawell.items.contact,
    ];

    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: AppColors.primarySwatch.shade800,
            width: 0.2,
          ),
        ),
      ),
      height: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const FlutterLogo(size: 50),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            ...List.generate(
              items.length,
              (i) => ItemNavBar(
                title: items[i],
                index: i,
              ),
            ),
            const Spacer(),
            Container(
              width: context.wd,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerRight,
              child: Row(
                children: [
                  const Text('ES'),
                  Switch(
                    value: changeLanguale.value,
                    onChanged: (state) {
                      LocaleSettings.setLocale(
                        state ? AppLocale.en : AppLocale.es,
                      );
                      changeLanguale.value = state;
                    },
                  ),
                  const Text('EN'),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
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
    final String location = GoRouterState.of(context).location;

    final String routesNamed = {
      0: '/inicio',
      1: '/acercade',
      2: '/portafolio',
      3: '/contactos',
    }[index]!;

    final IconData icons = {
      0: Icons.home,
      1: Icons.accessible_rounded,
      2: Icons.u_turn_left,
      3: Icons.kayaking,
    }[index]!;

    final validationRoute = !(location == routesNamed);

    return Stack(
      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          height: 56,
          left: 0,
          width: !validationRoute ? 288 : 0,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primarySwatch.shade700.withOpacity(0.3),
            ),
          ),
        ),
        ListTile(
          onTap: () => context.go(routesNamed),
          leading: Icon(
            icons,
            color: validationRoute
                ? AppColors.white.withOpacity(0.3)
                : AppColors.secondaryColor,
          ),
          title: Text(
            title,
            style: context.textTheme.labelSmall!.copyWith(
              fontSize: 18,
              color: validationRoute
                  ? AppColors.white.withOpacity(0.3)
                  : AppColors.secondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
