import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum ThemeType {
  light(
    icon: Symbols.light_mode_rounded,
    mode: ThemeMode.light,
    text: '라이트 모드',
  ),
  dark(
    icon: Symbols.dark_mode_rounded,
    mode: ThemeMode.dark,
    text: '다크 모드',
  ),
  system(
    icon: Symbols.manufacturing_rounded,
    mode: ThemeMode.system,
    text: '시스템 모드',
  );

  const ThemeType({
    required this.icon,
    required this.mode,
    required this.text,
  });

  final IconData icon;
  final ThemeMode mode;
  final String text;
}
