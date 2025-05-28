import 'package:flutter/material.dart';
import 'package:lotura/core/constants/text_style.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class LoturaNetworkErrorWidget extends StatelessWidget {
  const LoturaNetworkErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Symbols.wifi_off_rounded,
          size: 120,
          color: Theme.of(context).colorScheme.surfaceContainerLow,
        ),
        const SizedBox(height: 24),
        Text(
          '연결이 끊겼습니다.',
          style: LoturaTextStyle.heading3(
            color: Theme.of(context).colorScheme.surfaceContainerLow,
          ),
        ),
      ],
    );
  }
}
