import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum DeviceStatusType {
  @JsonValue(0)
  working,

  @JsonValue(1)
  available,

  @JsonValue(2)
  disconnect,

  @JsonValue(3)
  breakdown;

  String get displayText {
    switch (this) {
      case DeviceStatusType.working:
        return '작동 중';
      case DeviceStatusType.available:
        return '사용 가능';
      case DeviceStatusType.disconnect:
        return '연결 끊김';
      case DeviceStatusType.breakdown:
        return '고장';
    }
  }

  String title(int id, String device) {
    switch (this) {
      case DeviceStatusType.working:
        return '$id번 $device를\n알림 설정할까요?';
      case DeviceStatusType.available:
        return '$id번 $device는\n현재 사용할 수 있어요!';
      case DeviceStatusType.disconnect:
        return '$id번 $device는\n연결이 끊겨서 사용할 수 없어요.';
      case DeviceStatusType.breakdown:
        return '$id번 $device는\n고장으로 인해 사용할 수 없어요.';
    }
  }

  String? caption(String device) {
    switch (this) {
      case DeviceStatusType.working:
        return '$device가 종료되면 알림을 드릴게요.';
      case DeviceStatusType.available:
        return null;
      case DeviceStatusType.disconnect:
        return '다른 $device를 사용해주세요.\n빠른 시일 내에 수리해 사용 가능하도록 하겠습니다.';
      case DeviceStatusType.breakdown:
        return '다른 $device를 사용해주세요.\n빠른 시일 내에 수리해 사용 가능하도록 하겠습니다.';
    }
  }

  Color themeColorHandler(BuildContext context) {
    switch (this) {
      case DeviceStatusType.working:
        return Theme.of(context).colorScheme.primaryContainer;
      case DeviceStatusType.available:
        return Theme.of(context).colorScheme.onTertiary;
      case DeviceStatusType.disconnect:
        return Theme.of(context).colorScheme.secondary;
      case DeviceStatusType.breakdown:
        return Theme.of(context).colorScheme.onError;
    }
  }

  Color themeIconColorHandler(BuildContext context) {
    switch (this) {
      case DeviceStatusType.working:
        return Theme.of(context).colorScheme.primary;
      case DeviceStatusType.available:
        return Theme.of(context).colorScheme.tertiary;
      case DeviceStatusType.disconnect:
        return Theme.of(context).colorScheme.onSecondary;
      case DeviceStatusType.breakdown:
        return Theme.of(context).colorScheme.error;
    }
  }
}
