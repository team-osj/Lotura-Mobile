import 'package:lotura/models/push_alert.dart';
import 'package:lotura/providers/fcm.dart';
import 'package:lotura/repositories/push_alert_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/providers/push_alert.g.dart';

@riverpod
class PushAlertManager extends _$PushAlertManager {
  @override
  Future<List<PushAlertResponse>> build() async {
    final fcmToken = await ref.watch(fcmTokenProvider.future);
    print(fcmToken);
    return await PushAlertRepository.getPushAlertsList(fcmToken);
  }
}
