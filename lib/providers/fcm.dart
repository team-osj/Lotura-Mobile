import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/providers/fcm.g.dart';

@riverpod
Future<String> fcmToken(Ref ref) async {
  return await FirebaseMessaging.instance.getToken() ?? 'sibal';
}
