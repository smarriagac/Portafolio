import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/home_controller.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final count = ref.watch(homeProvider);
    log('ME IMPRIMI');

    return Scaffold(
      body: Center(
        child: Text('HOLA CONTADOR ${ref.watch(homeProvider)}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(homeProvider.notifier).state++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
