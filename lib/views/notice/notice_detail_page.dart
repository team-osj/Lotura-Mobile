import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotura/core/components/app_bar.dart';
import 'package:lotura/core/components/empty.dart';
import 'package:lotura/core/components/progress_indicator.dart';
import 'package:lotura/core/components/scroll_bar.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/layout/layout.dart';
import 'package:lotura/core/utils/format.dart';
import 'package:lotura/providers/notice.dart';
import 'package:url_launcher/url_launcher.dart';

class NoticeDetailPage extends StatelessWidget {
  const NoticeDetailPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return LoturaLayout(
      appBar: LoturaAppBar.pop(context: context),
      body: SafeArea(
        child: _NoticeDetailScreen(id: id),
      ),
    );
  }
}

class _NoticeDetailScreen extends ConsumerWidget {
  const _NoticeDetailScreen({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noticeDetailAsyncValue = ref.watch(noticeDetailProvider(id));
    return noticeDetailAsyncValue.when(
      data: (data) => LoturaScrollBar(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                style: LoturaTextStyle.heading3(
                  color: Theme.of(context).colorScheme.inverseSurface,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                data.date.toyyyyMMdd(),
                style: LoturaTextStyle.button1(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                ),
              ),
              const SizedBox(height: 24),
              Markdown(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                data: data.contents,
                onTapLink: (text, href, title) async {
                  await launchUrl(Uri.parse(href!));
                },
                styleSheet: MarkdownStyleSheet(
                  p: LoturaTextStyle.body1(
                    color: Theme.of(context).colorScheme.surfaceContainerHigh,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      error: (_, __) => const EmptyWidget(text: '에러가 발생했습니다.'),
      loading: () => const LoturaProgressIndicator(),
    );
  }
}
