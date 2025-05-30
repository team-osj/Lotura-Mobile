// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../providers/locate.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locateManagerHash() => r'1bd2c67482130d213051f47cdaa9db22ef3037a8';

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
