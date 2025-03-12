import 'package:flutter/material.dart';

class LoturaGesture extends StatelessWidget {
  const LoturaGesture({
    super.key,
    required this.child,
    required this.onTap,
    this.behavior = HitTestBehavior.translucent,
  });

  final Widget child;
  final Function onTap;
  final HitTestBehavior? behavior;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: behavior,
      onTap: () => onTap(),
      child: child,
    );
  }
}
