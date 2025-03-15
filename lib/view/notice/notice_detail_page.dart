import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:lotura/core/component/lotura_app_bar.dart';
import 'package:lotura/core/component/lotura_scroll_widget.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/layout/lotura_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class NoticeDetailPage extends StatelessWidget {
  const NoticeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoturaLayout(
      appBar: LoturaAppBar.pop(context: context),
      body: SafeArea(
        child: _NoticePageScreen(),
      ),
    );
  }
}

class _NoticePageScreen extends StatelessWidget {
  const _NoticePageScreen();

  @override
  Widget build(BuildContext context) {
    return LoturaScrollWidget(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'OSJ 사용 안내',
              style: LoturaTextStyle.heading3(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              '2025. 03. 16',
              style: LoturaTextStyle.button1(
                color: Theme.of(context).colorScheme.surfaceContainerLow,
              ),
            ),
            const SizedBox(height: 24),
            Markdown(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              data: 'sdsd',
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
    );
  }
}
