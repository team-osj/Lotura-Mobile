import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotura/core/component/lotura_gesture.dart';
import 'package:lotura/core/component/lotura_loading_indicator.dart';
import 'package:lotura/core/component/lotura_network_error_widget.dart';
import 'package:lotura/core/component/lotura_scroll_widget.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/type/device_status_type.dart';
import 'package:lotura/core/type/device_type.dart';
import 'package:lotura/core/type/locate_type.dart';
import 'package:lotura/provider/locate.dart';

class LaundryStatusTabScreen extends ConsumerWidget {
  const LaundryStatusTabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roomLocateAsyncValue = ref.watch(roomManagerProvider);
    return roomLocateAsyncValue.when(
      data: (data) => LoturaScrollWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 28),
              _RoomLocateTitle(),
              const SizedBox(height: 20),
              _RoomSelectRadioRow(),
              const SizedBox(height: 28),
              _DeviceStatusWidget(
                status: DeviceStatusType.available,
                type: DeviceType.washer,
              ),
            ],
          ),
        ),
      ),
      error: (_, __) => LoturaNetworkErrorWidget(),
      loading: () => LoturaLoadingIndicator(),
    );
  }
}

class _RoomLocateTitle extends ConsumerWidget {
  const _RoomLocateTitle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final curLocate = ref.watch(roomManagerProvider).value;
    return Text(
      curLocate!.title,
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
    return FittedBox(
      child: SizedBox(
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
    return LoturaGesture(
      onTap: () {
        if (curLocate != type) {
          ref.read(roomManagerProvider.notifier).moveRoomLocate(type);
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: curLocate == type
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            type.exception ?? type.text,
            style: LoturaTextStyle.button1(
              color: curLocate == type
                  ? Theme.of(context).colorScheme.onSurface
                  : Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ),
      ),
    );
  }
}

class _DeviceStatusWidget extends StatelessWidget {
  const _DeviceStatusWidget({
    required this.status,
    required this.type,
  });

  final DeviceStatusType status;
  final DeviceType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      decoration: BoxDecoration(
        color: status.themeColorHandler(context),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            type.icon,
            size: 24,
            color: status.themeIconColorHandler(context),
          ),
          const SizedBox(height: 8),
          Text(
            '18번',
            style: LoturaTextStyle.subTitle3(
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
          ),
          Text(
            type.text,
            style: LoturaTextStyle.body1(
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
          ),
        ],
      ),
    );
  }
}
