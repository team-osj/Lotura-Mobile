import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lotura/core/component/lotura_app_bar.dart';
import 'package:lotura/core/component/lotura_bottom_sheet.dart';
import 'package:lotura/core/component/lotura_error_icon.dart';
import 'package:lotura/core/component/lotura_gesture.dart';
import 'package:lotura/core/component/lotura_loading_indicator.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/layout/lotura_layout.dart';
import 'package:lotura/core/type/locate_type.dart';
import 'package:lotura/core/type/theme_type.dart';
import 'package:lotura/core/utils/toast.dart';
import 'package:lotura/provider/locate.dart';
import 'package:lotura/provider/theme.dart';
import 'package:lotura/view/setting/component/setting_bottom_sheet_option_widget.dart';
import 'package:lotura/view/setting/component/setting_option_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoturaLayout(
      appBar: LoturaAppBar.title(context: context, text: '설정'),
      body: const SafeArea(
        child: _SettingScreen(),
      ),
    );
  }
}

class _SettingScreen extends ConsumerWidget {
  const _SettingScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locateAsyncValue = ref.watch(locateManagerProvider);
    final themeAsyncValue = ref.watch(themeManagerProvider);
    return Column(
      children: [
        const SizedBox(height: 12),
        SettingOptionWidget(
          onTap: () => showModalBottomSheet(
            context: context,
            backgroundColor: Theme.of(context).colorScheme.onSurface,
            builder: (context) => const _LocateSettingBottomSheet(),
          ),
          caption: '메인 세탁실 설정',
          action: locateAsyncValue.when(
            data: (data) => Text(
              data.text,
              style: LoturaTextStyle.subTitle2(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            error: (_, __) => const LoturaErrorIcon(),
            loading: () => const LoturaLoadingIndicator(),
          ),
        ),
        const SizedBox(height: 12),
        SettingOptionWidget(
          onTap: () => showModalBottomSheet(
            context: context,
            backgroundColor: Theme.of(context).colorScheme.onSurface,
            builder: (context) => const _ModeSettingBottomSheet(),
          ),
          caption: '모드 설정',
          action: themeAsyncValue.when(
            data: (data) => Icon(
              data.icon,
              fill: 1,
              color: Theme.of(context).colorScheme.primary,
              size: 24,
            ),
            error: (_, __) => const LoturaErrorIcon(),
            loading: () => const LoturaLoadingIndicator(),
          ),
        ),
        const SizedBox(height: 12),
        SettingOptionWidget(
          onTap: () async => await launchUrl(
            Uri.parse('https://www.instagram.com/team.osj'),
          ),
          caption: '문의하기',
        ),
      ],
    );
  }
}

class _LocateSettingBottomSheet extends ConsumerWidget {
  const _LocateSettingBottomSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locateAsyncValue = ref.watch(locateManagerProvider);
    return LoturaBottomSheet(
      title: '메인 세탁실 설정',
      caption: '세탁실 탭에서 처음에 보여질 세탁실을 선택해보세요.',
      content: locateAsyncValue.when(
        data: (data) => Column(
          children: LocateType.values
              .map(
                (e) => LoturaGesture(
                  onTap: () async {
                    if (data != e) {
                      final updated = await ref
                          .read(locateManagerProvider.notifier)
                          .updateLocateType(e);
                      if (context.mounted) {
                        context.pop();
                        if (updated == true) {
                          ToastUtil.toast(
                            context: context,
                            text: '메인 세탁실 설정이 변경되었습니다.',
                            type: ToastType.success,
                          );
                        } else {
                          ToastUtil.error(context);
                        }
                      }
                    }
                  },
                  child: SettingBottomSheetOptionWidget(
                    caption: e.text,
                    isSelected: data == e,
                  ),
                ),
              )
              .toList(),
        ),
        error: (_, __) => const LoturaErrorIcon(height: 144),
        loading: () => const LoturaLoadingIndicator(height: 144),
      ),
    );
  }
}

class _ModeSettingBottomSheet extends ConsumerWidget {
  const _ModeSettingBottomSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeAsyncValue = ref.watch(themeManagerProvider);
    return LoturaBottomSheet(
      title: '화면 모드 설정',
      caption: '화면에 보여질 모드를 설정해보세요.',
      content: themeAsyncValue.when(
        data: (data) => Column(
          children: ThemeType.values
              .map(
                (e) => LoturaGesture(
                  onTap: () async {
                    if (data != e) {
                      final updated = await ref
                          .read(themeManagerProvider.notifier)
                          .updateThemeType(e);
                      if (context.mounted) {
                        context.pop();
                        if (updated == true) {
                          ToastUtil.toast(
                            context: context,
                            text: '모드 설정이 변경되었습니다.',
                            type: ToastType.success,
                          );
                        } else {
                          ToastUtil.error(context);
                        }
                      }
                    }
                  },
                  child: SettingBottomSheetOptionWidget(
                    caption: e.text,
                    isSelected: data == e,
                  ),
                ),
              )
              .toList(),
        ),
        error: (_, __) => const LoturaErrorIcon(height: 144),
        loading: () => const LoturaLoadingIndicator(height: 144),
      ),
    );
  }
}
