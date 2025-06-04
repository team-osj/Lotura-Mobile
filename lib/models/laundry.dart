import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lotura/core/type/device_status_type.dart';
import 'package:lotura/core/type/device_type.dart';

part '../generated/models/laundry.freezed.dart';
part '../generated/models/laundry.g.dart';

@freezed
class LaundryResponse with _$LaundryResponse {
  const factory LaundryResponse({
    required int id,
    @JsonKey(name: 'deviceType')
    required DeviceType type,
    required DeviceStatusType state,
  }) = _LaundryResponse;

  factory LaundryResponse.fromJson(Map<String, dynamic> json) =>
      _$LaundryResponseFromJson(json);
}
