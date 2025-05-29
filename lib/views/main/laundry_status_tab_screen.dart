import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lotura/core/components/button.dart';
import 'package:lotura/core/components/network_error_widget.dart';
import 'package:lotura/core/components/progress_indicator.dart';
import 'package:lotura/core/components/scroll_bar.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/type/device_status_type.dart';
import 'package:lotura/core/type/device_type.dart';
import 'package:lotura/core/type/locate_type.dart';
import 'package:lotura/providers/locate.dart';

class LaundryStatusTabScreen extends ConsumerWidget {
  const LaundryStatusTabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roomLocateAsyncValue = ref.watch(roomManagerProvider);
    return roomLocateAsyncValue.when(
      data: (data) => LoturaScrollBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28),
              _RoomLocateTitle(locate: data.title),
              SizedBox(height: 20),
              _RoomSelectRadioRow(),
              SizedBox(height: 28),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _DeviceStatusWidget(
                        status: DeviceStatusType.available,
                        type: DeviceType.dryer,
                      ),
                      SizedBox(width: 8),
                      _DeviceStatusWidget(
                        status: DeviceStatusType.available,
                        type: DeviceType.dryer,
                      ),
                      _MoveRouteIcon(),
                      _DeviceStatusWidget(
                        status: DeviceStatusType.available,
                        type: DeviceType.dryer,
                      ),
                      SizedBox(width: 8),
                      _DeviceStatusWidget(
                        status: DeviceStatusType.available,
                        type: DeviceType.dryer,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      error: (_, __) => const LoturaNetworkErrorWidget(),
      loading: () => const LoturaProgressIndicator(),
    );
  }
}

class _MoveRouteIcon extends StatelessWidget {
  const _MoveRouteIcon();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SvgPicture.asset(
        Assets.moveRouteIcon,
        colorFilter: ColorFilter.mode(
          Theme.of(context).colorScheme.surfaceContainerLowest,
          BlendMode.srcIn,
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

class _DeviceStatusWidget extends StatelessWidget {
  const _DeviceStatusWidget({
    required this.status,
    required this.type,
  });

  final DeviceStatusType status;
  final DeviceType type;

  @override
  Widget build(BuildContext context) {
    return LoturaButton(
      onTap: () {},
      width: type.width,
      color: status.themeColorHandler(context),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.symmetric(vertical: 8),
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
