import 'package:dio/dio.dart';
import 'package:lotura/core/network/base_url.dart';

final Dio dio = Dio(
  BaseOptions(
    baseUrl: baseUrl,
  ),
);
