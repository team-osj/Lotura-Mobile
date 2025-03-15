import 'package:hive/hive.dart';
import 'package:lotura/core/type/locate_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/provider/locate.g.dart';

@riverpod
class LocateManager extends _$LocateManager {
  final String _key = 'locate';
  late Box<String> _box;

  @override
  Future<LocateType> build() async {
    try {
      if (!Hive.isBoxOpen(_key)) {
        _box = await Hive.openBox<String>(_key);
        ref.onDispose(() {
          _box.close();
        });
      }

      final locateName = _box.get(_key, defaultValue: LocateType.maleSchool.text);
      return LocateType.values.firstWhere(
            (type) => type.text == locateName,
        orElse: () => LocateType.maleSchool,
      );
    } catch (err) {
      return LocateType.maleSchool;
    }
  }

  Future<void> updateLocateType(LocateType type) async {
    await _box.put(_key, type.text);
    ref.invalidateSelf();
  }
}

@Riverpod(keepAlive: true)
class RoomManager extends _$RoomManager {
  @override
  Future<LocateType> build() async {
    return ref.watch(locateManagerProvider.future);
  }

  void moveRoomLocate(LocateType type) {
    state = AsyncData(type);
  }
}
