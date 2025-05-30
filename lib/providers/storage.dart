import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotura/core/constants/storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part '../generated/providers/storage.g.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferencesWithCache> storage(Ref ref) async {
  return await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(
      allowList: {
        Storage.kMode,
        Storage.kLocate,
      },
    ),
  );
}
