import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_man_hour_calc_tool/domain_layer/providers.dart';
import 'package:si_man_hour_calc_tool/presentation_layer/calc_page.dart';
import 'package:si_man_hour_calc_tool/utils.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: Utils.instance.createThemeData(false, ref), // ライト用テーマ
      darkTheme: Utils.instance.createThemeData(true, ref), // ダーク用テーマ
      themeMode: ThemeMode.system, // モードをシステム設定にする
      title: ref.watch(titleProvider),
      home: const CalcPage(),
    );
  }
}
