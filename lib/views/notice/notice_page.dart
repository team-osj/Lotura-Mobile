import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotura/core/components/app_bar.dart';
import 'package:lotura/core/components/button.dart';
import 'package:lotura/core/components/empty.dart';
import 'package:lotura/core/components/progress_indicator.dart';
import 'package:lotura/core/components/scroll_bar.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/layout/layout.dart';
import 'package:lotura/core/utils/format.dart';
import 'package:lotura/models/notice.dart';
import 'package:lotura/providers/notice.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoturaLayout(
      appBar: LoturaAppBar.title(context: context, text: '공지사항'),
      body: const SafeArea(
        child: _NoticeScreen(),
      ),
    );
  }
}

class _NoticeScreen extends ConsumerWidget {
  const _NoticeScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noticeListAsyncValue = ref.watch(noticeListProvider);
    return noticeListAsyncValue.when(
      data: (data) => data.isNotEmpty
          ? LoturaScrollBar(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Image.asset(
                      Assets.banner(Theme.of(context).brightness),
                    ),
                  ),
                  const SizedBox(height: 12),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final notice = data[index];
                      return _NoticeItem(notice: notice);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 4);
                    },
                  ),
                ],
              ),
            )
          : const EmptyWidget(text: '등록된 공지사항이 없습니다.'),
      error: (_, __) => const EmptyWidget(text: '에러가 발생했습니다.'),
      loading: () => const LoturaProgressIndicator(),
    );
  }
}

class _NoticeItem extends StatelessWidget {
  const _NoticeItem({
    required this.notice,
  });

  final NoticeResponse notice;

  @override
  Widget build(BuildContext context) {
    return LoturaButton(
      onTap: () => pushNoticeDetailPage(context, id: notice.id),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Symbols.chat_rounded,
              fill: 1,
              size: 28,
              color: Theme.of(context).colorScheme.primaryFixed,
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notice.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: LoturaTextStyle.subTitle2(
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    notice.date.toAgo(),
                    style: LoturaTextStyle.label(
                      color: Theme.of(context).colorScheme.surfaceContainerLow,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
