import 'package:flutter/material.dart';
import 'package:lotura/core/component/lotura_scroll_widget.dart';
import 'package:lotura/core/core.dart';

class LaundryApplyTabScreen extends StatelessWidget {
  const LaundryApplyTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoturaScrollWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28),
            _Title(),
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '알림 설정한\n세탁기와 건조기',
          style: LoturaTextStyle.heading2(
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
        ),
        const SizedBox(height: 14),
        Text(
          '알림을 설정하여 세탁기와 건조기를\n누구보다 빠르게 사용해보세요.',
          style: LoturaTextStyle.body1(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ],
    );
  }
}

