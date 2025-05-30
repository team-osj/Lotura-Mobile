// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/laundry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LaundryResponse _$LaundryResponseFromJson(Map<String, dynamic> json) =>
    _LaundryResponse(
      id: (json['id'] as num).toInt(),
      deviceType: $enumDecode(_$DeviceTypeEnumMap, json['device_type']),
      state: (json['state'] as num).toInt(),
    );

Map<String, dynamic> _$LaundryResponseToJson(_LaundryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_type': _$DeviceTypeEnumMap[instance.deviceType]!,
      'state': instance.state,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.washer: 'WASH',
  DeviceType.dryer: 'DRY',
};
