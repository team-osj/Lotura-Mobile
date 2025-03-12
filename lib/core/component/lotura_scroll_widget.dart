import 'package:flutter/material.dart';

class LoturaScrollWidget extends StatefulWidget {
  const LoturaScrollWidget({
    super.key,
    required this.child,
    this.physics,
  });

  final Widget child;
  final ScrollPhysics? physics;

  @override
  State<LoturaScrollWidget> createState() => _LoturaScrollWidgetState();
}

class _LoturaScrollWidgetState extends State<LoturaScrollWidget> {
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: controller,
      thickness: 6,
      thumbColor: Theme.of(context).colorScheme.surfaceDim,
      crossAxisMargin: 6,
      radius: const Radius.circular(12),
      child: SingleChildScrollView(
        controller: controller,
        physics: widget.physics ?? const BouncingScrollPhysics(),
        child: widget.child,
      ),
    );
  }
}
