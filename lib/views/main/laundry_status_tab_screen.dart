import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotura/core/components/button.dart';
import 'package:lotura/core/components/empty.dart';
import 'package:lotura/core/components/progress_indicator.dart';
import 'package:lotura/core/components/scroll_bar.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/type/locate_type.dart';
import 'package:lotura/models/device.dart';
import 'package:lotura/providers/device.dart';
import 'package:lotura/providers/locate.dart';
import 'package:lotura/views/main/components/device_arrange_widget.dart';

class LaundryStatusTabScreen extends ConsumerWidget {
  const LaundryStatusTabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roomLocateAsyncValue = ref.watch(roomManagerProvider);
    final deviceAsyncValue = ref.watch(deviceManagerProvider);

    if (roomLocateAsyncValue is AsyncLoading ||
        deviceAsyncValue is AsyncLoading) {
      return const LoturaProgressIndicator();
    }

    if (roomLocateAsyncValue is AsyncError || deviceAsyncValue is AsyncError) {
      return const EmptyWidget(text: '서버와의 연결이 해제되었습니다.');
    }

    final locateArrange = roomLocateAsyncValue.value!.locateArrange;

    return LoturaScrollBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28),
            _RoomLocateTitle(locate: roomLocateAsyncValue.value!.title),
            const SizedBox(height: 20),
            const _RoomSelectRadioRow(),
            const SizedBox(height: 28),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: locateArrange.length,
              itemBuilder: (context, index) {
                final List<DeviceResponse> filteredDevices =
                    deviceAsyncValue.value!.where((device) {
                  return locateArrange[index].values.single.contains(device.id);
                }).toList();

                return DeviceArrangeRow(
                  type: roomLocateAsyncValue
                      .value!.locateArrange[index].keys.single,
                  devices: filteredDevices,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 12);
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class _RoomLocateTitle extends ConsumerWidget {
  const _RoomLocateTitle({required this.locate});

  final String locate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      locate,
      style: LoturaTextStyle.heading3(
        color: Theme.of(context).colorScheme.inverseSurface,
      ),
    );
  }
}

class _RoomSelectRadioRow extends StatelessWidget {
  const _RoomSelectRadioRow();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: LocateType.values.length,
        itemBuilder: (context, index) {
          return _RoomSelectRadioButton(
            type: LocateType.values.elementAt(index),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 12);
        },
      ),
    );
  }
}

class _RoomSelectRadioButton extends ConsumerWidget {
  const _RoomSelectRadioButton({
    required this.type,
  });

  final LocateType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final curLocate = ref.watch(roomManagerProvider).value;
    return LoturaButton(
      onTap: () {
        if (curLocate != type) {
          ref.read(roomManagerProvider.notifier).moveRoomLocate(type);
        }
      },
      color: curLocate == type
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Center(
        child: Text(
          type.exception ?? type.text,
          style: LoturaTextStyle.button1(
            color: curLocate == type
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}
