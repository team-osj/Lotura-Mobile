import 'package:dio/dio.dart';
import 'package:lotura/core/network/secret.dart';

final Dio dio = Dio(
  BaseOptions(
    baseUrl: baseUrl,
  ),
);
