import 'package:flutter/material.dart';

part '../theme/lotura_theme.dart';

abstract final class LoturaCoreColor {
  LoturaCoreColor._();

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);
}

abstract final class LoturaLightColor {
  LoturaLightColor._();

  static const Color surface = Color(0xFFFFFFFF);

  static const Color primaryContainer = Color(0xFFF3FAFF);
  static const Color main100 = Color(0xFFB3DFFF);
  static const Color main200 = Color(0xFF80CAFF);
  static const Color primaryFixed = Color(0xFF4DB4FF);
  static const Color main400 = Color(0xFF26A4FF);
  static const Color primary = Color(0xFF0094FF);
  static const Color main600 = Color(0xFF008CFF);
  static const Color main700 = Color(0xFF0081FF);
  static const Color main800 = Color(0xFF0077FF);
  static const Color onPrimary = Color(0xFF0065FF);

  static const Color secondary = Color(0xFFFBFBFC);
  static const Color surfaceContainerLowest = Color(0xFFDDDCDD);
  static const Color surfaceDim = Color(0xFFC6C5C7);
  static const Color surfaceTint = Color(0xFFAFADB1);
  static const Color gray400 = Color(0xFF9D9CA0);
  static const Color onSecondary = Color(0xFF8C8A8F);
  static const Color surfaceContainerLow = Color(0xFF848287);
  static const Color surfaceContainer = Color(0xFF79777C);
  static const Color surfaceContainerHighest = Color(0xFF6F6D72);
  static const Color surfaceContainerHigh = Color(0xFF5C5A60);

  static const Color onTertiary = Color(0xFFF1FFF1);
  static const Color tertiary = Color(0xFF62AE55);

  static const Color onError = Color(0xFFFFF7F7);
  static const Color error = Color(0xFFFF3B32);
}

abstract final class LoturaDarkColor {
  LoturaDarkColor._();

  static const Color surface = Color(0xFF242424);

  static const Color primaryContainer = Color(0xFF2D2E3F);
  static const Color main100 = Color(0xFF3A3D64);
  static const Color main200 = Color(0xFF474C8B);
  static const Color primaryFixed = Color(0xFF555BB2);
  static const Color main400 = Color(0xFF6169D8);
  static const Color primary = Color(0xFF818AFF);
  static const Color main600 = Color(0xFF949BFF);
  static const Color main700 = Color(0xFFA7ADFF);
  static const Color main800 = Color(0xFFB9BEFF);
  static const Color onPrimary = Color(0xFFCCCFFF);

  static const Color secondary = Color(0xFF5C5A60);
  static const Color surfaceContainerLowest = Color(0xFF6F6D72);
  static const Color surfaceDim = Color(0xFF79777C);
  static const Color surfaceTint = Color(0xFF848287);
  static const Color gray400 = Color(0xFF8C8A8F);
  static const Color onSecondary = Color(0xFF9D9CA0);
  static const Color surfaceContainerLow = Color(0xFFAFADB1);
  static const Color surfaceContainer = Color(0xFFC6C5C7);
  static const Color surfaceContainerHighest = Color(0xFFDDDCDD);
  static const Color surfaceContainerHigh = Color(0xFFFBFBFC);

  static const Color onTertiary = Color(0xFF2A4C41);
  static const Color tertiary = Color(0xFF0FD495);

  static const Color onError = Color(0xFF3F2D2D);
  static const Color error = Color(0xFFFF7375);
}
