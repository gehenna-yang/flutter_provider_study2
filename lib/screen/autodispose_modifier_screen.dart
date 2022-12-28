import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/layout/default_layout.dart';
import 'package:riverpodtest/riverpod/autodispose_modifier_provider.dart';

class AutoDisposeModifierScreen extends ConsumerWidget {
  const AutoDisposeModifierScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(autoDisposeModifierProvider);

    return DefaultLayout(
      title: 'AutoDispose_modifier_screen',
      body: Center(
        child: state.when(
          data: (data) => Text(data.toString()),
          error: (err, stack) => Text(err.toString()),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
