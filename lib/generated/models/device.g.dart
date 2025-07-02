// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceResponseImpl _$$DeviceResponseImplFromJson(Map<String, dynamic> json) =>
    _$DeviceResponseImpl(
      id: (json['id'] as num).toInt(),
      status: $enumDecode(_$DeviceStatusTypeEnumMap, json['state']),
      deviceType: $enumDecode(_$DeviceTypeEnumMap, json['device_type']),
      roomType: $enumDecodeNullable(_$LocateTypeEnumMap, json['room_type']),
    );

Map<String, dynamic> _$$DeviceResponseImplToJson(
        _$DeviceResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': _$DeviceStatusTypeEnumMap[instance.status]!,
      'device_type': _$DeviceTypeEnumMap[instance.deviceType]!,
      'room_type': _$LocateTypeEnumMap[instance.roomType],
    };

const _$DeviceStatusTypeEnumMap = {
  DeviceStatusType.working: 0,
  DeviceStatusType.available: 1,
  DeviceStatusType.disconnect: 2,
  DeviceStatusType.breakdown: 3,
};

const _$DeviceTypeEnumMap = {
  DeviceType.washer: 'WASH',
  DeviceType.dryer: 'DRY',
};

const _$LocateTypeEnumMap = {
  LocateType.maleSchool: 'male_school',
  LocateType.maleDormitory: 'male_dormitory',
  LocateType.female: 'female',
};
