part of 'color.dart';

class LoturaTheme {
  LoturaTheme._();

  static final ThemeData light = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      scrim: LoturaCoreColor.transparent,
      primary: LoturaLightColor.primary, /// 기본색 - 제일 많이 사용하는 컬러
      onPrimary: LoturaLightColor.onPrimary, /// 기본색 - 다른 색의 구성요소로 사용되는 컬러
      primaryContainer: LoturaLightColor.primaryContainer, /// 기본색 - 다른 색의 바탕이 되는 컬러
      primaryFixed: LoturaLightColor.primaryFixed, /// 기본색 - primaryContainer의 대체품
      secondary: LoturaLightColor.secondary, /// 보조색 - 제일 많이 사용하는 컬러
      onSecondary: LoturaLightColor.onSecondary, /// 보조색 - 다른 색의 구성요소로 사용되는 컬러
      error: LoturaLightColor.error, /// 오류 구성요소에 사용할 색상
      onError: LoturaLightColor.onError, /// 오류 바탕에 사용할 색상
      tertiary: LoturaLightColor.tertiary, /// 제 3자 색상 - 구성요소에 사용할 색상
      onTertiary: LoturaLightColor.onTertiary, /// 제 3자 색상 - 바탕에 사용할 색상
      inverseSurface: LoturaCoreColor.black, /// 바탕과 대비되는 색
      surface: LoturaLightColor.surface, /// 바탕색
      onSurface: LoturaCoreColor.white, /// 바탕 위 구성요소에 사용할 색
      surfaceContainerHigh: LoturaLightColor.surfaceContainerHigh, /// 페이지에서 강조되어야하는 구성요소에 사용되는 색상
      surfaceContainerHighest: LoturaLightColor.surfaceContainerHighest, /// 페이지에서 더 강조되어야하는 구성요소에 사용되는 색상
      surfaceContainer: LoturaLightColor.surfaceContainer, /// 페이지, 위젯들을 부가설명하는 구성요소에 사용되는 색상
      surfaceContainerLow: LoturaLightColor.surfaceContainerLow, /// SurfaceContainer보다 덜 강조되어야하는 구성요소에 사용되는 색상
      surfaceContainerLowest: LoturaLightColor.surfaceContainerLowest, /// 구성 요소중에 가장 덜 강조되어야하는 구성요소에 사용되는 색상
      surfaceDim: LoturaLightColor.surfaceDim,
      surfaceTint: LoturaLightColor.surfaceTint,
    ),
  );

  static final ThemeData dark = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      scrim: LoturaCoreColor.transparent,
      primary: LoturaDarkColor.primary, /// 기본색 - 제일 많이 사용하는 컬러
      onPrimary: LoturaDarkColor.onPrimary, /// 기본색 - 다른 색의 구성요소로 사용되는 컬러
      primaryContainer: LoturaDarkColor.primaryContainer, /// 기본색 - 다른 색의 바탕이 되는 컬러
      primaryFixed: LoturaDarkColor.primaryFixed, /// 기본색 - primaryContainer의 대체품
      secondary: LoturaDarkColor.secondary, /// 보조색 - 제일 많이 사용하는 컬러
      onSecondary: LoturaDarkColor.onSecondary, /// 보조색 - 다른 색의 구성요소로 사용되는 컬러
      error: LoturaDarkColor.error, /// 오류 구성요소에 사용할 색상
      onError: LoturaDarkColor.onError, /// 오류 바탕에 사용할 색상
      tertiary: LoturaDarkColor.tertiary, /// 제 3자 색상 - 구성요소에 사용할 색상
      onTertiary: LoturaDarkColor.onTertiary, /// 제 3자 색상 - 바탕에 사용할 색상
      inverseSurface: LoturaCoreColor.white, /// 바탕과 대비되는 색
      surface: LoturaDarkColor.surface, /// 바탕색
      onSurface: LoturaCoreColor.black, /// 바탕 위 구성요소에 사용할 색
      surfaceContainerHigh: LoturaDarkColor.surfaceContainerHigh, /// 페이지에서 강조되어야하는 구성요소에 사용되는 색상
      surfaceContainerHighest: LoturaDarkColor.surfaceContainerHighest, /// 페이지에서 더 강조되어야하는 구성요소에 사용되는 색상
      surfaceContainer: LoturaDarkColor.surfaceContainer, /// 페이지, 위젯들을 부가설명하는 구성요소에 사용되는 색상
      surfaceContainerLow: LoturaDarkColor.surfaceContainerLow, /// SurfaceContainer보다 덜 강조되어야하는 구성요소에 사용되는 색상
      surfaceContainerLowest: LoturaDarkColor.surfaceContainerLowest, /// 구성 요소중에 가장 덜 강조되어야하는 구성요소에 사용되는 색상
      surfaceDim: LoturaDarkColor.surfaceDim,
      surfaceTint: LoturaDarkColor.surfaceTint,
    ),
  );
}
