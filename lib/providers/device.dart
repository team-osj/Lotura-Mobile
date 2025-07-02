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

  void _updateStateWithNewDevice(DeviceResponse newDevice) {
    // 💡 가장 중요한 부분! state.value! 대신 state.whenData를 사용해서 안전하게 접근
    state.whenData((currentDevices) {
      // 현재 디바이스 목록을 복사하여 불변성 유지 (새로운 List 생성)
      final updatedDevices = List<DeviceResponse>.from(currentDevices);

      // 새로 들어온 newDevice의 ID를 기준으로 기존 목록에서 해당 기기를 찾아.
      final index = updatedDevices.indexWhere((d) => d.id == newDevice.id);

      if (index != -1) {
        // 💡 기존 디바이스가 있다면, 해당 위치의 디바이스를 newDevice로 교체
        // (DeviceResponse 전체를 교체하는 방식이 copyWith로 부분 업데이트하는 것보다
        //  더 간단하고 명확할 수 있어, 만약 모든 필드가 업데이트될 가능성이 있다면)
        updatedDevices[index] = newDevice;
      } else {
        // 💡 새로운 디바이스라면 목록에 추가
        updatedDevices.add(newDevice);
      }

      // DeviceManager의 상태를 업데이트된 새로운 목록으로 바꿔줘.
      state = AsyncData(updatedDevices);
    });
    // 만약 state가 AsyncLoading이나 AsyncError 상태라면, whenData 블록은 실행되지 않아.
    // 이 경우 웹소켓 업데이트를 무시하거나, 필요하다면 에러 처리 로직을 추가할 수 있어.
  }
}
