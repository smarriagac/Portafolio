import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionTwoView extends HookConsumerWidget {
  const SectionTwoView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.amber,
      child: const Center(
        child: Text('Section TWO'),
      ),
    );
  }
}
