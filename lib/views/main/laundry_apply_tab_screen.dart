import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotura/core/components/empty.dart';
import 'package:lotura/core/components/progress_indicator.dart';
import 'package:lotura/core/components/scroll_bar.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/providers/push_alert.dart';

class LaundryApplyTabScreen extends ConsumerWidget {
  const LaundryApplyTabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pushAlertAsyncValue = ref.watch(pushAlertManagerProvider);
    return pushAlertAsyncValue.when(
      data: (data) => const LoturaScrollBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28),
              _Title(),
            ],
          ),
        ),
      ),
      error: (_, __) => const EmptyWidget(text: '네트워크 연결 오류'),
      loading: () => const LoturaProgressIndicator(),
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
