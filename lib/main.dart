import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/provider/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(themeManagerProvider).value?.mode ?? ThemeMode.light;

    return MaterialApp.router(
      routerConfig: routerConfig,
      darkTheme: LoturaTheme.dark,
      theme: LoturaTheme.light,
      themeMode: mode,
      debugShowCheckedModeBanner: false,
    );
  }
}
