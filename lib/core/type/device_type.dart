import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum DeviceType {
  @JsonValue('WASH')
  washer(
    text: '세탁기',
    icon: Symbols.water_drop_rounded,
    width: 148,
  ),

  @JsonValue('DRY')
  dryer(
    text: '건조기',
    icon: Symbols.cool_to_dry_rounded,
    width: 70,
  );

  const DeviceType({
    required this.text,
    required this.icon,
    required this.width,
  });

  final String text;
  final IconData icon;
  final double width;
}
