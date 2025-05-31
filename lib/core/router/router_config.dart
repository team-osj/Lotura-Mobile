import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lotura/views/main/main_page.dart';
import 'package:lotura/views/notice/notice_detail_page.dart';
import 'package:lotura/views/notice/notice_page.dart';
import 'package:lotura/views/setting/setting_page.dart';
import 'package:lotura/views/splash/splash_page.dart';

part 'navigator.dart';

enum LoturaRoute {
  splash('/splash'),
  main('/main'),
  notice('/notice'),
  noticeDetail('/noticeDetail/:id'),
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
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: LoturaRoute.main.path,
      name: LoturaRoute.main.name,
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: LoturaRoute.notice.path,
      name: LoturaRoute.notice.name,
      builder: (context, state) => const NoticePage(),
    ),
    GoRoute(
      path: LoturaRoute.noticeDetail.path,
      name: LoturaRoute.noticeDetail.name,
      builder: (context, state) {
        final String id = state.pathParameters['id']!;
        return NoticeDetailPage(id: id);
      },
    ),
    GoRoute(
      path: LoturaRoute.setting.path,
      name: LoturaRoute.setting.name,
      builder: (context, state) => const SettingPage(),
    ),
  ],
);
