import 'package:flutter/material.dart';
import "package:intl/intl.dart";

class Utils {
  /// singleton
  static final instance = Utils._();

  /// singletonを実現するためのプライベートコンストラクタ
  Utils._();

  /// 端末がダークモードかどうか
  /// ture:ダークモード、false:ライトモード
  bool isDarkMode(BuildContext context) {
    final Brightness brightness = MediaQuery.platformBrightnessOf(context);
    return brightness == Brightness.dark;
  }

  /// 分 => 時間(フォーマット：少数第3位を四捨五入して少数第2位まで表示)
  // double toHourFromMinute(int minute) => (minute / 60) * 10.round() / 10;
  String toHourTextFromMinute(int minute) => (minute / 60).toStringAsFixed(2);

  /// 分 => 作業工数を算出する
  String toManHourTextFromMinute(int minute, int managerCount) =>
      (double.parse((minute / 465).toStringAsFixed(2)) * managerCount)
          .toStringAsFixed(2);

  /// 担当者文字列から担当者の人数を算出する
  String getManagerCountText(String managerText) {
    int length = managerText.split('、').length;
    if (length >= 2) return length.toString();
    length = managerText.split(',').length;
    return length.toString();
  }
}
