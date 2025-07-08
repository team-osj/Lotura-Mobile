import 'package:flutter/material.dart';
import 'package:lotura/core/components/buttons/gesture.dart';
import 'package:lotura/core/core.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SettingOptionWidget extends StatelessWidget {
  const SettingOptionWidget({
    super.key,
    required this.onTap,
    required this.caption,
    this.action,
  });

  final void Function()? onTap;
  final String caption;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return LoturaGesture(
      onTap: onTap,
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              caption,
              style: LoturaTextStyle.subTitle2(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
            Row(
              children: [
                if (action != null) ...[
                  action!,
                  const SizedBox(width: 8),
                ],
                Icon(
                  Symbols.chevron_right_rounded,
                  color: Theme.of(context).colorScheme.surfaceTint,
                  size: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
