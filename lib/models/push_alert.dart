import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lotura/core/type/device_status_type.dart';
import 'package:lotura/core/type/device_type.dart';

part '../generated/models/push_alert.g.dart';

part '../generated/models/push_alert.freezed.dart';

@freezed
class PushAlertResponse with _$PushAlertResponse {
  const factory PushAlertResponse({
    required int deviceId,
    required DeviceType deviceType,
  }) = _PushAlertResponse;

  factory PushAlertResponse.fromJson(Map<String, dynamic> json) =>
      _$PushAlertResponseFromJson(json);
}

@Freezed(toJson: true)
class PushAlertRequest with _$PushAlertRequest {
  const factory PushAlertRequest({
    required String deviceId,
    required String token,
    required int expectState,
  }) = _PushAlertRequest;
}
