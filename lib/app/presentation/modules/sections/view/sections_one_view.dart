import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../global/extension/build_context_ext.dart';

class SectionOneView extends HookConsumerWidget {
  const SectionOneView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Container(
        height: context.hg,
        color: Colors.amberAccent,
        child: const Center(
          child: Text('Section ONE'),
        ),
      ),
    );
  }
}
