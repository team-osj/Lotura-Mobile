import 'package:go_router/go_router.dart';
import 'package:lotura/view/main/main_page.dart';
import 'package:lotura/view/notice/notice_page.dart';
import 'package:lotura/view/splash/splash_page.dart';

enum LoturaRoute {
  splash('/splash'),
  main('/main'),
  notice('/notice'),
  setting('/setting');

  const LoturaRoute(this.path);

  final String path;
}

final GoRouter routerConfig = GoRouter(
  initialLocation: LoturaRoute.main.path,
  routes: [
    GoRoute(
      path: LoturaRoute.splash.path,
      name: LoturaRoute.splash.name,
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: LoturaRoute.main.path,
      name: LoturaRoute.main.name,
      builder: (context, state) => MainPage(),
    ),
    GoRoute(
      path: LoturaRoute.notice.path,
      name: LoturaRoute.notice.name,
      builder: (context, state) => NoticePage(),
    ),
  ],
);
