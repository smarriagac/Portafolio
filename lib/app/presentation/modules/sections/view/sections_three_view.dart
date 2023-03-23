import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionThreeView extends HookConsumerWidget {
  const SectionThreeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: const Center(
        child: Text('Section THREE'),
      ),
    );
  }
}
