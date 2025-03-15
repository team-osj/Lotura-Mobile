import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class LoturaErrorIcon extends StatelessWidget {
  const LoturaErrorIcon({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      child: Icon(
        Symbols.error_rounded,
        size: 24,
        color: Theme.of(context).colorScheme.error,
      ),
    );
  }
}
