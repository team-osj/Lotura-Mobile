import 'package:lotura/core/constants/storage.dart';
import 'package:lotura/core/type/locate_type.dart';
import 'package:lotura/provider/storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/provider/locate.g.dart';

@riverpod
class LocateManager extends _$LocateManager {
  @override
  Future<LocateType> build() async {
    final storage = await ref.watch(storageProvider.future);
    final locateName = storage.getString(Storage.kLocate);
    return LocateType.values.firstWhere(
      (type) => type.name == locateName,
      orElse: () => LocateType.maleSchool,
    );
  }

  Future<bool> updateLocateType(LocateType type) async {
    try {
      final storage = await ref.watch(storageProvider.future);
      await storage.setString(Storage.kLocate, type.name);
      return true;
    } catch (err) {
      return false;
    } finally {
      ref.invalidateSelf();
    }
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
