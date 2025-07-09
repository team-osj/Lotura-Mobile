import 'package:flutter/material.dart';
import 'package:lotura/core/components/buttons/gesture.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    super.key,
    required this.onTap,
    required this.child,
    this.height = 56,
    this.width,
    this.color,
    this.borderRadius,
    this.padding,
    this.expand = false,
  });

  final void Function()? onTap;
  final Widget child;
  final double? height;
  final double? width;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final button = LoturaGesture(
      onTap: onTap,
      height: height,
      width: width,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(8),
      ),
      padding: padding,
      child: child,
    );
    return expand ? Expanded(child: button) : button;
  }
}
