import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lotura/core/type/device_type.dart';

part '../generated/models/laundry.freezed.dart';
part '../generated/models/laundry.g.dart';

@freezed
abstract class LaundryResponse with _$LaundryResponse {
  const factory LaundryResponse({
    required int id,
    required DeviceType deviceType,
    required int state,
  }) = _LaundryResponse;

  factory LaundryResponse.fromJson(Map<String, dynamic> json) =>
      _$LaundryResponseFromJson(json);
}
