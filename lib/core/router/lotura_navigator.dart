part of 'router_config.dart';

void goMainPage(BuildContext context) async {
  return context.goNamed(LoturaRoute.main.name);
}

Future<void> pushNoticePage(BuildContext context) async {
  return await context.pushNamed<void>(LoturaRoute.notice.name);
}

Future<void> pushSettingPage(BuildContext context) async {
  return await context.pushNamed<void>(LoturaRoute.setting.name);
}
