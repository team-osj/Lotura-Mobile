import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lotura/core/components/buttons/gesture.dart';
import 'package:lotura/core/core.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class LoturaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoturaAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
  });

  factory LoturaAppBar.pop({
    required BuildContext context,
  }) {
    return LoturaAppBar(
      leading: LoturaGesture(
        onTap: () => context.pop(),
        shape: const CircleBorder(),
        child: Icon(
          Symbols.arrow_back_ios_new_rounded,
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
          size: 20,
        ),
      ),
    );
  }

  factory LoturaAppBar.title({
    required BuildContext context,
    required String text,
  }) {
    return LoturaAppBar(
      leading: LoturaAppBar.pop(context: context),
      title: Text(
        text,
        style: LoturaTextStyle.subTitle2(
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
        ),
      ),
    );
  }

  final Widget? title, leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PreferredSize(
        preferredSize: preferredSize,
        child: DefaultAppBar(
          title: title,
          leading: leading,
          actions: actions,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
  });

  final Widget? title, leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      /// 자동적으로 leading 버튼이 생성되지 않도록 설정
      automaticallyImplyLeading: false,

      /// 스크롤할 때 AppBar 밑에 Elevation이 생기지 않도록 설정
      scrolledUnderElevation: 0,

      /// title property 사용 시, 양 옆 padding 제거
      titleSpacing: 0,
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: title,
      leading: leading,
      actions: actions,
    );
  }
}
