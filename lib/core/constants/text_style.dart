import 'package:flutter/material.dart';

abstract final class LoturaTextStyle {
  LoturaTextStyle._();

  static TextStyle caption({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 1.191,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle label({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.191,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle heading1({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 42,
      fontWeight: FontWeight.w600,
      height: 1.192,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle heading2({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 32,
      fontWeight: FontWeight.w600,
      height: 1.193,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle heading3({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 1.191,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle heading4({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.195,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle subTitle1({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      height: 1.194,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle subTitle2({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      height: 1.193,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle subTitle3({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      height: 1.192,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle body1({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.192,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle body2({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.191,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle body3({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 10,
      fontWeight: FontWeight.w500,
      height: 1.19,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle button1({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.193,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle button2({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      height: 1.191,
      overflow: TextOverflow.visible,
    );
  }
}
