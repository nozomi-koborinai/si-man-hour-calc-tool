import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_man_hour_calc_tool/domain_layer/result.dart';
import 'package:si_man_hour_calc_tool/presentation_layer/calc_page_view_model.dart';

/// グローバルでアクセス可能なプロバイダを管理するファイル

//# CalcPageのProvider Start
/// 投稿ページタイトル
final titleProvider = Provider<String>((_) => 'SI工数算出ツール');

/// 担当者見出し
final managerLabelProvider = Provider<String>((_) => '担当者');

/// SI開始時間見出し
final startLabelProvider = Provider<String>((_) => 'SI開始時刻');

/// SI終了時間見出し
final endLabelProvider = Provider<String>((_) => 'SI終了時刻');

/// ヒントテキスト
final hintTextProvider = Provider<String>((_) => 'CL分：担当者Ａ、担当者Ｂ');

/// ボタンキャプション
final btnCaptionProvider = Provider<String>((_) => '計算');

/// 担当者テキストコントローラ
final managerControllerStateProvider = StateProvider.autoDispose((ref) =>
    TextEditingController(text: ref.watch(resultProvider.state).state.manager));

/// SI開始時間確定時
final startTimeOfDayLabelStateProvider =
    StateProvider.autoDispose((ref) => const TimeOfDay(hour: 0, minute: 0));

/// SI終了時間確定時
final endTimeOfDayLabelStateProvider =
    StateProvider.autoDispose((ref) => const TimeOfDay(hour: 0, minute: 0));

/// PostPageViewModelのインスタンスを返却
final calcPageViewModelProvider = Provider((_) => CalcPageViewModel());

/// 工数結果用のモデル
final resultProvider = StateProvider<Result>(
    (_) => const Result(manager: '', time: 0.0, peopleCount: 0, manHour: 0.0));

/// 工数結果用のテキスト
final resultTextProvider =
    StateProvider<String>((_) => '担当者（任意）、開始時刻、終了時刻を入力して【計算】ボタンをタップしてください');

//# CalcPageのProvider End