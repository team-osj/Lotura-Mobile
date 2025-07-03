import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lotura/core/components/button.dart';
import 'package:lotura/core/core.dart';

/// TODO : BottomSheet 구조 변경 필요
class LoturaBottomSheet extends StatelessWidget {
  const LoturaBottomSheet({
    super.key,
    required this.title,
    required this.caption,
    required this.content,
  });

  final String title;
  final String? caption;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),

            /// TODO : Private Class로 분리하기
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: _RemoveSheetIcon(),
                  ),
                  const SizedBox(height: 20),
                  _SheetDescription(
                    title: title,
                    caption: caption,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            content,
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _RemoveSheetIcon extends StatelessWidget {
  const _RemoveSheetIcon();

  @override
  Widget build(BuildContext context) {
    return LoturaButton(
      onTap: () => context.pop(),
      shape: const CircleBorder(),
      child: SvgPicture.asset(
        Assets.arrowDownIcon,
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(
          Theme.of(context).colorScheme.surfaceContainerLowest,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}

class _SheetDescription extends StatelessWidget {
  const _SheetDescription({
    required this.title,
    required this.caption,
  });

  final String title;
  final String? caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: LoturaTextStyle.heading4(
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
        ),
        if (caption != null) ...[
          const SizedBox(height: 8),
          Text(
            caption!,
            style: LoturaTextStyle.body2(
              color: Theme.of(context).colorScheme.surfaceContainer,
            ),
          ),
        ],
      ],
    );
  }
}
