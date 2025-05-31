import 'package:flutter/material.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/layout/layout.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 1100)).then((value) {
        if (mounted) {
          goMainPage(context);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoturaLayout(
      body: Center(
        child: Image.asset(
          Assets.logo(Theme.of(context).brightness),
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
