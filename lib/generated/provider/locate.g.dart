// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../provider/locate.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locateManagerHash() => r'6cdfb31c6a7b2faec8d07ac74e23a16d5ec8db35';

/// See also [LocateManager].
@ProviderFor(LocateManager)
final locateManagerProvider =
    AutoDisposeAsyncNotifierProvider<LocateManager, LocateType>.internal(
  LocateManager.new,
  name: r'locateManagerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$locateManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LocateManager = AutoDisposeAsyncNotifier<LocateType>;
String _$roomManagerHash() => r'8f864fc79c5de68176472fc513e1cb984693e7dc';

/// See also [RoomManager].
@ProviderFor(RoomManager)
final roomManagerProvider =
    AsyncNotifierProvider<RoomManager, LocateType>.internal(
  RoomManager.new,
  name: r'roomManagerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$roomManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RoomManager = AsyncNotifier<LocateType>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
