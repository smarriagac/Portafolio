import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../generated/translations.g.dart';
import '../../../global/app_color.dart';
import '../../../global/extension/build_context_ext.dart';

class SectionOneView extends HookConsumerWidget {
  const SectionOneView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: SizedBox(
        height: context.hg,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.t.home.name,
                    style: context.textTheme.titleLarge!.copyWith(
                      color: AppColors.secondaryColor,
                      fontSize: 42,
                      height: 0.8,
                    ),
                  ),
                  Text(
                    'Sebastian Marriaga',
                    style: context.textTheme.headlineLarge!.copyWith(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    t.home.occupation,
                    style: context.textTheme.titleLarge!.copyWith(
                      fontSize: 38,
                      color: AppColors.white.withOpacity(0.4),
                      height: 0.8,
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 20,
                child: Text(
                  t.home.passion,
                  style: context.textTheme.bodyLarge,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
