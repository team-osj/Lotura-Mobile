import 'package:hive/hive.dart';
import 'package:lotura/core/type/theme_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/provider/theme.g.dart';

@Riverpod(keepAlive: true)
class ThemeManager extends _$ThemeManager {
  final String _key = 'theme';
  late Box<String> _box;

  @override
  Future<ThemeType> build() async {
    try {
      if (!Hive.isBoxOpen(_key)) {
        _box = await Hive.openBox<String>(_key);
        ref.onDispose(() => _box.close());
      }

      final themeName = _box.get(_key, defaultValue: ThemeType.light.name);
      return ThemeType.values.firstWhere(
        (type) => type.name == themeName,
        orElse: () => ThemeType.light,
      );
    } catch (err) {
      return ThemeType.light;
    }
  }

  Future<void> updateThemeType(ThemeType type) async {
    _box.put(_key, type.name);
    ref.invalidateSelf();
  }
}
