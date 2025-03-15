import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lotura/view/main/main_page.dart';
import 'package:lotura/view/notice/notice_detail_page.dart';
import 'package:lotura/view/notice/notice_page.dart';
import 'package:lotura/view/setting/setting_page.dart';
import 'package:lotura/view/splash/splash_page.dart';

part 'lotura_navigator.dart';

enum LoturaRoute {
  splash('/splash'),
  main('/main'),
  notice('/notice'),
  noticeDetail('/noticeDetail'),
  setting('/setting');

  const LoturaRoute(this.path);

  final String path;
}

final GoRouter routerConfig = GoRouter(
  initialLocation: LoturaRoute.splash.path,
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
    GoRoute(
      path: LoturaRoute.noticeDetail.path,
      name: LoturaRoute.noticeDetail.name,
      builder: (context, state) => NoticeDetailPage(),
    ),
    GoRoute(
      path: LoturaRoute.setting.path,
      name: LoturaRoute.setting.name,
      builder: (context, state) => SettingPage(),
    ),
  ],
);
