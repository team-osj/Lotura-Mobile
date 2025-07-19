// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/push_alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PushAlertResponseImpl _$$PushAlertResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PushAlertResponseImpl(
      deviceId: (json['device_id'] as num).toInt(),
      deviceType: $enumDecode(_$DeviceTypeEnumMap, json['device_type']),
    );

Map<String, dynamic> _$$PushAlertResponseImplToJson(
        _$PushAlertResponseImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'device_type': _$DeviceTypeEnumMap[instance.deviceType]!,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.washer: 'WASH',
  DeviceType.dryer: 'DRY',
};

Map<String, dynamic> _$$PushAlertRequestImplToJson(
        _$PushAlertRequestImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'token': instance.token,
      'expect_state': instance.expectState,
    };
