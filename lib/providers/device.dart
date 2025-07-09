import 'package:flutter/foundation.dart';
import 'package:lotura/models/device.dart';
import 'package:lotura/providers/websocket.dart';
import 'package:lotura/repositories/device_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/providers/device.g.dart';

@Riverpod(keepAlive: true)
class DeviceManager extends _$DeviceManager {
  @override
  Future<List<DeviceResponse>> build() async {
    ref.listen(webSocketManagerProvider, (previous, next) {
      next.whenData((newDevice) {
        state.whenData((devices) {
          state = AsyncData(
            devices
                .map(
                  (current) => current.id == newDevice.id
                      ? current.copyWith(status: newDevice.status)
                      : current,
                )
                .toList(),
          );
        });
      });
    });

    return await DeviceRepository.getAllDevices();
  }
}
