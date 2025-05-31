import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/providers/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(themeManagerProvider).value?.mode ?? ThemeMode.system;

    return MaterialApp.router(
      routerConfig: routerConfig,
      darkTheme: LoturaTheme.dark,
      theme: LoturaTheme.light,
      themeMode: mode,
      debugShowCheckedModeBanner: false,
    );
  }
}
