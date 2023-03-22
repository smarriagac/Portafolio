import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../generated/translations.g.dart';
import '../../../global/extension/build_context_ext.dart';

class SectionOneView extends HookConsumerWidget {
  const SectionOneView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: SizedBox(
        height: context.hg,
        child: Center(
          child: Text(
            context.t.home.nameComplete.name(name: 'Sebastian Marriaga'),
            style: context.textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
