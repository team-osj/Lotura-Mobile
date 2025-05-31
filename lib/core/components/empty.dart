import 'package:flutter/material.dart';
import 'package:lotura/core/core.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    this.child,
    this.text,
    this.textStyle,
  });

  final Widget? child;
  final String? text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = LoturaTextStyle.subTitle1(
      color: Theme.of(context).colorScheme.surfaceContainerLow,
    );

    return Center(
      child: DefaultTextStyle(
        style: defaultTextStyle.merge(textStyle),
        child: child ?? Text(text!),
      ),
    );
  }
}
