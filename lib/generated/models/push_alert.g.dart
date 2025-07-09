// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/push_alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PushAlertResponseImpl _$$PushAlertResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PushAlertResponseImpl(
      deviceId: (json['device_id'] as num).toInt(),
      status: $enumDecode(_$DeviceStatusTypeEnumMap, json['state']),
    );

Map<String, dynamic> _$$PushAlertResponseImplToJson(
        _$PushAlertResponseImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'state': _$DeviceStatusTypeEnumMap[instance.status]!,
    };

const _$DeviceStatusTypeEnumMap = {
  DeviceStatusType.working: 0,
  DeviceStatusType.available: 1,
  DeviceStatusType.disconnect: 2,
  DeviceStatusType.breakdown: 3,
};

Map<String, dynamic> _$$PushAlertRequestImplToJson(
        _$PushAlertRequestImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'token': instance.token,
      'expect_state': instance.expectState,
    };
