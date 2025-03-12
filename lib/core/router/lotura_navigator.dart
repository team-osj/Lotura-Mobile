import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lotura/core/router/router_config.dart';

void goMainPage(BuildContext context) async {
  return context.goNamed(LoturaRoute.main.name);
}

Future<void> pushNoticePage(BuildContext context) async {
  return await context.pushNamed<void>(LoturaRoute.notice.name);
}
