import 'package:flutter/material.dart';

class LoturaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoturaAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
  });

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
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: title,
      leading: leading,
      actions: actions,
    );
  }
}
