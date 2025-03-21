import 'package:flutter/material.dart';

enum DeviceStatusType {
  working('작동 중'),
  available('사용 가능'),
  disconnect('연결 끊김'),
  breakdown('고장');

  Color themeColorHandler(BuildContext context) {
    switch (this) {
      case DeviceStatusType.working:
        return Theme.of(context).colorScheme.onTertiary;
      case DeviceStatusType.available:
        return Theme.of(context).colorScheme.primaryContainer;
      case DeviceStatusType.disconnect:
        return Theme.of(context).colorScheme.secondary;
      case DeviceStatusType.breakdown:
        return Theme.of(context).colorScheme.onError;
    }
  }

  Color themeIconColorHandler(BuildContext context) {
    switch (this) {
      case DeviceStatusType.working:
        return Theme.of(context).colorScheme.tertiary;
      case DeviceStatusType.available:
        return Theme.of(context).colorScheme.primary;
      case DeviceStatusType.disconnect:
        return Theme.of(context).colorScheme.onSecondary;
      case DeviceStatusType.breakdown:
        return Theme.of(context).colorScheme.error;
    }
  }

  const DeviceStatusType(this.text);

  final String text;
}
