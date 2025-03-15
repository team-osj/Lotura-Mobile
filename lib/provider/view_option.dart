import 'package:flutter/material.dart';
import 'package:lotura/core/type/view_option_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/provider/view_option.g.dart';

@riverpod
class ViewOptionManager extends _$ViewOptionManager {
  late final PageController _controller;

  PageController get controller => _controller;

  @override
  ViewOptionType build() {
    _controller = PageController(initialPage: ViewOptionType.status.index);
    _controller.addListener(_onPageChanged);

    ref.onDispose(() => _controller.dispose());

    return ViewOptionType.status;
  }

  void changeOption(ViewOptionType type) {
    _controller.animateToPage(
      type.index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.linearToEaseOut,
    ).then((_) {
      state = type;
    });
  }

  void _onPageChanged() {
    final index = _controller.page!.round();
    state = ViewOptionType.values.firstWhere((e) => e.index == index);
  }
}
