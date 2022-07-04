import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_man_hour_calc_tool/domain_layer/providers.dart';

class Utils {
  /// singleton
  static final instance = Utils._();

  /// singletonを実現するためのプライベートコンストラクタ
  Utils._();

  /// ウィジェット透明化にかける時間
  final int durationSecondsForOpacity = 1;

  /// ウィジェット透明化の復元にかける時間
  final int durationSecondsForRestore = 2;

  /// ThemeDataを生成する
  /// param:isDark:True => ダークモード用テーマ, False => ライトモード用テーマ
  ThemeData createThemeData(bool isDark, WidgetRef ref) {
    Brightness brightness = isDark ? Brightness.dark : Brightness.light;
    return ThemeData(
        brightness: brightness, fontFamily: ref.watch(fontFamilyProvider));
  }

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
  // String toManHourTextFromMinute(int minute, int managerCount) =>
  //     (double.parse((minute / 465).toStringAsFixed(2)) * managerCount)
  //         .toStringAsFixed(2);
  String toManHourTextFromMinute(int minute, int managerCount) =>
      ((minute * managerCount) / 465).toStringAsFixed(2);

  /// 担当者文字列から担当者の人数を算出する
  String getManagerCountText(String managerText) {
    int length = managerText.split('、').length;
    if (length >= 2) return length.toString();
    length = managerText.split(',').length;
    return length.toString();
  }

  /// クリップボードコピー
  void clipBoardCopy(String copyText) =>
      Clipboard.setData(ClipboardData(text: copyText));
}
