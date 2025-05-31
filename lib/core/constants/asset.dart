import 'dart:ui';

abstract final class Assets {
  static String arrowDownIcon = 'assets/icon/arrow_down_icon.svg';
  static String moveRouteIcon = 'assets/icon/move_route_icon.svg';
  static String unreadIcon = 'assets/icon/unread_icon.svg';

  static String dryer = 'assets/image/device/dryer.png';
  static String washer = 'assets/image/device/washer.png';

  static String indicator(Brightness brightness) {
    switch (brightness) {
      case Brightness.dark:
        return 'assets/lottie/indicator/dark_loading_indicator.json';
      case Brightness.light:
        return 'assets/lottie/indicator/light_loading_indicator.json';
    }
  }

  static String banner(Brightness brightness) {
    switch (brightness) {
      case Brightness.dark:
        return 'assets/image/banner/dark_notice_banner.png';
      case Brightness.light:
        return 'assets/image/banner/light_notice_banner.png';
    }
  }

  static String logo(Brightness brightness) {
    switch (brightness) {
      case Brightness.dark:
        return 'assets/image/logo/dark_osj_splash_logo.png';
      case Brightness.light:
        return 'assets/image/logo/light_osj_splash_logo.png';
    }
  }
}
