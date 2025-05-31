import 'package:flutter/material.dart';
import 'package:lotura/core/components/toast_widget.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum ToastType {
  success(Symbols.check_circle_rounded),
  failure(Symbols.error_rounded);

  Color themeColorHandler(BuildContext context) {
    switch (this) {
      case ToastType.success:
        return Theme.of(context).colorScheme.primary;
      case ToastType.failure:
        return Theme.of(context).colorScheme.error;
    }
  }

  const ToastType(this.icon);

  final IconData icon;
}

class ToastUtil {
  static void toast({
    required BuildContext context,
    required String text,
    required ToastType type,
  }) async {
    OverlayEntry overlay = OverlayEntry(
      builder: (_) => LoturaToastWidget(text: text, type: type),
    );

    Navigator.of(context).overlay!.insert(overlay);

    await Future.delayed(const Duration(milliseconds: 1500));
    overlay.remove();
  }

  static void error(BuildContext context) {
    ToastUtil.toast(
      context: context,
      text: '오류가 발생했습니다.',
      type: ToastType.failure,
    );
  }
}
