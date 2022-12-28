import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/riverpod/provider_observer.dart';
import 'package:riverpodtest/screen/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    )
  );
}

