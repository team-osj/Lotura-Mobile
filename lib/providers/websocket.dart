import 'dart:async';
import 'dart:convert';

import 'package:lotura/core/constants/constant.dart';
import 'package:lotura/core/network/secret.dart';
import 'package:lotura/models/device.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part '../generated/providers/websocket.g.dart';

@Riverpod(keepAlive: true)
class WebSocketManager extends _$WebSocketManager {
  final StreamController<DeviceResponse> _streamController =
      StreamController<DeviceResponse>();

  @override
  Stream<DeviceResponse> build() async* {

    final channel = WebSocketChannel.connect(Uri.parse(webSocketUrl));
    await channel.ready;

    channel.stream.listen(
      (data) {
        _streamController.sink.add(
          DeviceResponse.fromJson(jsonDecode(data) as Map<String, dynamic>),
        );
      },
      onError: (err) async {
        await Future.delayed(Constant.apiRetryAfter);
        ref.invalidateSelf();
      },
      onDone: () async {
        await Future.delayed(Constant.apiRetryAfter);
        ref.invalidateSelf();
      },
    );

    yield* _streamController.stream.asBroadcastStream();
  }
}
