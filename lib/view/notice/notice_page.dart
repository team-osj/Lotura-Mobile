import 'package:flutter/material.dart';
import 'package:lotura/core/component/lotura_app_bar.dart';
import 'package:lotura/core/component/lotura_gesture.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/layout/lotura_layout.dart';
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

class _NoticeScreen extends StatelessWidget {
  const _NoticeScreen();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Image.asset(
            '$imageBannerAsset/${Theme.of(context).brightness.name}_notice_banner.png',
          ),
          const SizedBox(height: 12),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return const _NoticeItemWidget();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 4);
            },
          ),
        ],
      ),
    );
  }
}

class _NoticeItemWidget extends StatelessWidget {
  const _NoticeItemWidget();

  @override
  Widget build(BuildContext context) {
    return LoturaGesture(
      onTap: () => pushNoticeDetailPage(context),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Symbols.chat_rounded,
                    fill: 1,
                    size: 28,
                    color: Theme.of(context).colorScheme.primaryFixed,
                  ),
                  const SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'OSJ 사용 안내',
                        style: LoturaTextStyle.subTitle2(
                          color: Theme.of(context).colorScheme.inverseSurface,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '2025. 03. 16',
                        style: LoturaTextStyle.label(
                          color:
                              Theme.of(context).colorScheme.surfaceContainerLow,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '읽음',
                style: LoturaTextStyle.body3(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
