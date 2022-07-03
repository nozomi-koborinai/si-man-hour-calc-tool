import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_man_hour_calc_tool/presentation_layer/calc_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: createThemeData(false), // ライト用テーマ
      darkTheme: createThemeData(true), // ダーク用テーマ
      themeMode: ThemeMode.system, // モードをシステム設定にする
      title: 'SI工数算出ツール',
      home: const CalcPage(),
    );
  }

  /// ThemeDataを生成する
  /// param:isDark:True => ダークモード用テーマ, False => ライトモード用テーマ
  ThemeData createThemeData(bool isDark) {
    Brightness brightness = isDark ? Brightness.dark : Brightness.light;
    return ThemeData(brightness: brightness, fontFamily: "Noto Sans JP");
  }
}
