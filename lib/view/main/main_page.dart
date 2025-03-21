import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotura/core/component/lotura_app_bar.dart';
import 'package:lotura/core/component/lotura_gesture.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/layout/lotura_layout.dart';
import 'package:lotura/core/type/view_option_type.dart';
import 'package:lotura/provider/view_option.dart';
import 'package:lotura/view/main/laundry_apply_tab_screen.dart';
import 'package:lotura/view/main/laundry_status_tab_screen.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const LoturaLayout(
      appBar: _ViewOptionAppBar(),
      body: SafeArea(
        child: _PageView(),
      ),
    );
  }
}

class _PageView extends ConsumerWidget {
  const _PageView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewOption = ref.watch(viewOptionManagerProvider.notifier);
    return PageView(
      controller: viewOption.controller,
      children: [
        const LaundryApplyTabScreen(),
        const LaundryStatusTabScreen(),
      ],
    );
  }
}

class _ViewOptionSwitch extends ConsumerWidget {
  const _ViewOptionSwitch();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double width = 200, height = 41, itemWidth = 88, itemHeight = 33;
    final viewOption = ref.watch(viewOptionManagerProvider);
    return Row(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Stack(
              children: [
                AnimatedAlign(
                  alignment: Alignment(viewOption.offset, 0),
                  duration: const Duration(milliseconds: 200),
                  child: Container(
                    width: itemWidth,
                    height: itemHeight,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSurface,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                ...ViewOptionType.values.map(
                  (e) => LoturaGesture(
                    behavior: HitTestBehavior.deferToChild,
                    onTap: () {
                      if (viewOption.index != e.index) {
                        ref.read(viewOptionManagerProvider.notifier).changeOption(e);
                      }
                    },
                    child: Align(
                      alignment: Alignment(e.offset, 0),
                      child: Container(
                        width: itemWidth,

                        // 사이드 부분을 터치하는 경우까지 고려해서 높이 지정
                        height: height,
                        color: Theme.of(context).colorScheme.scrim,
                        alignment: Alignment.center,
                        child: Text(
                          e.text,
                          style: LoturaTextStyle.body1(
                            color: viewOption == e
                                ? Theme.of(context).colorScheme.onPrimary
                                : Theme.of(context).colorScheme.inverseSurface,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ViewOptionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _ViewOptionAppBar();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PreferredSize(
        preferredSize: preferredSize,
        child: DefaultAppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const _ViewOptionSwitch(),
                Row(
                  children: [
                    LoturaGesture(
                      onTap: () => pushNoticePage(context),
                      child: Icon(
                        Symbols.notifications_rounded,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: 28,
                      ),
                    ),
                    const SizedBox(width: 12),
                    LoturaGesture(
                      onTap: () => pushSettingPage(context),
                      child: Icon(
                        Symbols.settings_rounded,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(57);
}
