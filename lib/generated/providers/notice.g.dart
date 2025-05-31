// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../providers/notice.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noticeListHash() => r'1e51e32c1414cf60251098ec339db66de68344c0';

/// See also [noticeList].
@ProviderFor(noticeList)
final noticeListProvider =
    AutoDisposeFutureProvider<List<NoticeResponse>>.internal(
  noticeList,
  name: r'noticeListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$noticeListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NoticeListRef = AutoDisposeFutureProviderRef<List<NoticeResponse>>;
String _$noticeDetailHash() => r'c477708eb760368abab078414bdfac75ca116ef5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [noticeDetail].
@ProviderFor(noticeDetail)
const noticeDetailProvider = NoticeDetailFamily();

/// See also [noticeDetail].
class NoticeDetailFamily extends Family<AsyncValue<NoticeResponse>> {
  /// See also [noticeDetail].
  const NoticeDetailFamily();

  /// See also [noticeDetail].
  NoticeDetailProvider call(
    String id,
  ) {
    return NoticeDetailProvider(
      id,
    );
  }

  @override
  NoticeDetailProvider getProviderOverride(
    covariant NoticeDetailProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'noticeDetailProvider';
}

/// See also [noticeDetail].
class NoticeDetailProvider extends AutoDisposeFutureProvider<NoticeResponse> {
  /// See also [noticeDetail].
  NoticeDetailProvider(
    String id,
  ) : this._internal(
          (ref) => noticeDetail(
            ref as NoticeDetailRef,
            id,
          ),
          from: noticeDetailProvider,
          name: r'noticeDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noticeDetailHash,
          dependencies: NoticeDetailFamily._dependencies,
          allTransitiveDependencies:
              NoticeDetailFamily._allTransitiveDependencies,
          id: id,
        );

  NoticeDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<NoticeResponse> Function(NoticeDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoticeDetailProvider._internal(
        (ref) => create(ref as NoticeDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<NoticeResponse> createElement() {
    return _NoticeDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoticeDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NoticeDetailRef on AutoDisposeFutureProviderRef<NoticeResponse> {
  /// The parameter `id` of this provider.
  String get id;
}

class _NoticeDetailProviderElement
    extends AutoDisposeFutureProviderElement<NoticeResponse>
    with NoticeDetailRef {
  _NoticeDetailProviderElement(super.provider);

  @override
  String get id => (origin as NoticeDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
