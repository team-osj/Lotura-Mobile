import 'package:flutter/material.dart';

class LoturaLayout extends StatelessWidget {
  const LoturaLayout({
    super.key,
    required this.body,
    this.backgroundColor,
    this.appBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomSheet,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
  });

  final Widget body;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton, bottomSheet;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool extendBody, extendBodyBehindAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.surface,
      appBar: appBar,
      body: body,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomSheet: bottomSheet,
    );
  }
}
