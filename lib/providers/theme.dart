import 'package:lotura/core/constants/storage.dart';
import 'package:lotura/core/type/theme_type.dart';
import 'package:lotura/providers/storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/providers/theme.g.dart';

@riverpod
class ThemeManager extends _$ThemeManager {
  @override
  Future<ThemeType> build() async {
    final storage = await ref.watch(storageProvider.future);
    final themeName = storage.getString(Storage.kMode);
    return ThemeType.values.firstWhere(
      (type) => type.name == themeName,
      orElse: () => ThemeType.light,
    );
  }

  Future<bool> updateThemeType(ThemeType type) async {
    try {
      final storage = await ref.watch(storageProvider.future);
      await storage.setString(Storage.kMode, type.name);
      return true;
    } catch (err) {
      return false;
    } finally {
      ref.invalidateSelf();
    }
  }
}
