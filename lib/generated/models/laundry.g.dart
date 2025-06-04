// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/laundry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaundryResponseImpl _$$LaundryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LaundryResponseImpl(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$DeviceTypeEnumMap, json['deviceType']),
      state: $enumDecode(_$DeviceStatusTypeEnumMap, json['state']),
    );

Map<String, dynamic> _$$LaundryResponseImplToJson(
        _$LaundryResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceType': _$DeviceTypeEnumMap[instance.type]!,
      'state': _$DeviceStatusTypeEnumMap[instance.state]!,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.washer: 'WASH',
  DeviceType.dryer: 'DRY',
};

const _$DeviceStatusTypeEnumMap = {
  DeviceStatusType.working: 0,
  DeviceStatusType.available: 1,
  DeviceStatusType.disconnect: 2,
  DeviceStatusType.breakdown: 3,
};
