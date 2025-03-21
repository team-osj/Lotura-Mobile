import 'package:flutter/material.dart';
import 'package:lotura/core/component/lotura_text_style.dart';
import 'package:lotura/core/utils/toast.dart';

class LoturaToastWidget extends StatelessWidget {
  final String text;
  final ToastType type;

  const LoturaToastWidget({
    super.key,
    required this.text,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 58),
          child: Material(
            color: Theme.of(context).colorScheme.scrim,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      type.icon,
                      size: 24,
                      color: type.themeColorHandler(context),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      text,
                      style: LoturaTextStyle.body1(
                        color: Theme.of(context).colorScheme.inverseSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
