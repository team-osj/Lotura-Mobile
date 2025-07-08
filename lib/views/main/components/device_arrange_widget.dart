import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lotura/core/components/bottom_sheet.dart';
import 'package:lotura/core/components/buttons/bottom_sheet_button.dart';
import 'package:lotura/core/components/buttons/gesture.dart';
import 'package:lotura/core/constants/asset.dart';
import 'package:lotura/core/constants/text_style.dart';
import 'package:lotura/core/type/device_arrange_type.dart';
import 'package:lotura/core/type/device_status_type.dart';
import 'package:lotura/models/device.dart';

class DeviceArrangeRow extends StatelessWidget {
  const DeviceArrangeRow({
    super.key,
    required this.type,
    required this.devices,
  });

  final DeviceArrangeType type;
  final List<DeviceResponse> devices;

  @override
  Widget build(BuildContext context) {
    List<Widget> children;

    children = switch (type) {
      DeviceArrangeType.onlyWasher => [
          _DeviceStatusWidget(device: devices[0]),
          const _MoveRouteIcon(),
          _DeviceStatusWidget(device: devices[1]),
        ],
      DeviceArrangeType.leftWasher => [
          _DeviceStatusWidget(device: devices[0]),
          const _MoveRouteIcon(),
          const _EmptyWidget(),
        ],
      DeviceArrangeType.rightWasher => [
          const _EmptyWidget(),
          const _MoveRouteIcon(),
          _DeviceStatusWidget(device: devices[0]),
        ],
      DeviceArrangeType.onlyDryer => [
          _DryerArrangePart(
            left: devices[0],
            right: devices[1],
          ),
          const _MoveRouteIcon(),
          _DryerArrangePart(
            left: devices[2],
            right: devices[3],
          ),
        ],
      DeviceArrangeType.leftDryer => [
          _DryerArrangePart(
            left: devices[0],
            right: devices[1],
          ),
          const _MoveRouteIcon(),
          const _EmptyWidget(),
        ],
      DeviceArrangeType.rightDryer => [
          const _EmptyWidget(),
          const _MoveRouteIcon(),
          _DryerArrangePart(
            left: devices[0],
            right: devices[1],
          ),
        ],
      DeviceArrangeType.leftWasherRightDryer => [
          _DeviceStatusWidget(device: devices[0]),
          const _MoveRouteIcon(),
          _DryerArrangePart(
            left: devices[1],
            right: devices[2],
          ),
        ],
      DeviceArrangeType.leftDryerRightWasher => [
          _DryerArrangePart(
            left: devices[0],
            right: devices[1],
          ),
          const _MoveRouteIcon(),
          _DeviceStatusWidget(device: devices[2]),
        ],
    };

    return Row(
      children: children,
    );
  }
}

class _DryerArrangePart extends StatelessWidget {
  const _DryerArrangePart({
    required this.left,
    required this.right,
  });

  final DeviceResponse left, right;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          _DeviceStatusWidget(device: left),
          const SizedBox(width: 8),
          _DeviceStatusWidget(device: right),
        ],
      ),
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

class _EmptyWidget extends StatelessWidget {
  const _EmptyWidget();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox.shrink(),
    );
  }
}

class _DeviceStatusWidget extends StatelessWidget {
  const _DeviceStatusWidget({required this.device});

  final DeviceResponse device;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LoturaGesture(
        onTap: () => showModalBottomSheet(
          context: context,
          backgroundColor: Theme.of(context).colorScheme.onSurface,
          builder: (context) => _DeviceApplyBottomSheet(device: device),
        ),
        color: device.status.themeColorHandler(context),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              device.deviceType.icon,
              size: 24,
              color: device.status.themeIconColorHandler(context),
            ),
            const SizedBox(height: 8),
            Text(
              '${device.id}번',
              style: LoturaTextStyle.subTitle3(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
            Text(
              device.deviceType.text,
              style: LoturaTextStyle.body1(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DeviceApplyBottomSheet extends StatelessWidget {
  const _DeviceApplyBottomSheet({required this.device});

  final DeviceResponse device;

  @override
  Widget build(BuildContext context) {
    return LoturaBottomSheet(
      title: device.status.title(device),
      caption: device.status.caption(device),
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: switch (device.status) {
          DeviceStatusType.working => Row(
            children: [
              BottomSheetButton(
                onTap: () => context.pop(),
                color: Theme.of(context).colorScheme.secondary,
                child: Center(
                  child: Text(
                    '취소',
                    style: LoturaTextStyle.button1(
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              BottomSheetButton(
                onTap: () => context.pop(),
                color: Theme.of(context).colorScheme.primary,
                child: Center(
                  child: Text(
                    '알림 설정',
                    style: LoturaTextStyle.button1(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ],
          ),
          _ => BottomSheetButton(
            onTap: () => context.pop(),
            color: Theme.of(context).colorScheme.primary,
            child: Center(
              child: Text(
                '확인',
                style: LoturaTextStyle.button1(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
        },
      ),
    );
  }
}
