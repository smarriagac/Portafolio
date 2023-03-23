import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionFourView extends HookConsumerWidget {
  const SectionFourView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: const Center(
        child: Text('Section FOUR'),
      ),
    );
  }
}
