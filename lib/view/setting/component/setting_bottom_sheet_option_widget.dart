import 'package:flutter/material.dart';
import 'package:lotura/core/core.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SettingBottomSheetOptionWidget extends StatelessWidget {
  const SettingBottomSheetOptionWidget({
    super.key,
    required this.caption,
    required this.isSelected,
  });

  final String caption;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            caption,
            style: LoturaTextStyle.button1(
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
          ),
          if (isSelected)
            Icon(
              Symbols.check_rounded,
              size: 24,
              color: Theme.of(context).colorScheme.primary,
            ),
        ],
      ),
    );
  }
}
