import 'package:flutter/material.dart';

/// TODO : 다른 방향으로 구현 필요함.
/// 일반 버튼, Elevated 버튼.. etc
class LoturaButton extends StatelessWidget {
  const LoturaButton({
    super.key,
    required this.onTap,
    required this.child,
    this.color,
    this.shape,
    this.border,
    this.padding,
    this.height,
    this.width,
  });

  final void Function()? onTap;
  final Widget child;
  final Color? color;
  final ShapeBorder? shape;
  final Border? border;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;

  BorderRadius? _resolveBorderRadius() {
    if (shape is RoundedRectangleBorder) {
      final radius = (shape as RoundedRectangleBorder).borderRadius;
      if (radius is BorderRadius) return radius;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final isRounded = shape is CircleBorder;
    final borderRadius = _resolveBorderRadius();

    return Material(
      color: Theme.of(context).colorScheme.scrim,
      child: InkWell(
        onTap: onTap,
        customBorder: shape,
        child: Ink(
          height: height,
          width: width,
          padding: padding,
          decoration: BoxDecoration(
            color: color,
            shape: isRounded ? BoxShape.circle : BoxShape.rectangle,
            borderRadius: isRounded ? null : borderRadius,
            border: border,
          ),
          child: child,
        ),
      ),
    );
  }
}
