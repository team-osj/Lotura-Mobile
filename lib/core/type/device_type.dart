import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum DeviceType {
  washer(
    text: '세탁기',
    icon: Symbols.water_drop_rounded,
  ),

  dryer(
    text: '건조기',
    icon: Symbols.cool_to_dry_rounded,
  );

  const DeviceType({
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;
}
