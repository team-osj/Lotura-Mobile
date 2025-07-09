import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotura/core/components/app_bar.dart';
import 'package:lotura/core/components/buttons/gesture.dart';
import 'package:lotura/core/core.dart';
import 'package:lotura/core/layout/layout.dart';
import 'package:lotura/core/type/view_option_type.dart';
import 'package:lotura/providers/view_option.dart';
import 'package:lotura/views/main/laundry_apply_tab_screen.dart';
import 'package:lotura/views/main/laundry_status_tab_screen.dart';
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
    final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(4));

    final animationDuration = const Duration(milliseconds: 200);

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
                  duration: animationDuration,
                  child: Material(
                    shape: shape,
                    color: Theme.of(context).colorScheme.onSurface,
                    child: const SizedBox(
                      width: itemWidth,
                      height: itemHeight,
                    ),
                  ),
                ),
                ...ViewOptionType.values.map(
                      (e) => Align(
                    alignment: Alignment(e.offset, 0),
                    child: SizedBox(
                      width: itemWidth,
                      height: itemHeight,
                      child: LoturaGesture(
                        onTap: () {
                          if (viewOption.index != e.index) {
                            ref.read(viewOptionManagerProvider.notifier).changeOption(e);
                          }
                        },
                        shape: shape,
                        color: Theme.of(context).colorScheme.scrim,
                        child: Center(
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
                      shape: const CircleBorder(),
                      child: Icon(
                        Symbols.notifications_rounded,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: 28,
                      ),
                    ),
                    const SizedBox(width: 12),
                    LoturaGesture(
                      onTap: () => pushSettingPage(context),
                      shape: const CircleBorder(),
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
