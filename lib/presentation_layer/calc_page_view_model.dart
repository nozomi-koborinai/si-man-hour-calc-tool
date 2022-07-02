import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_man_hour_calc_tool/domain_layer/providers.dart';
import 'package:si_man_hour_calc_tool/domain_layer/result.dart';
import 'package:si_man_hour_calc_tool/utils.dart';

class CalcPageViewModel {
  late WidgetRef _ref;
  void setRef(WidgetRef ref) => _ref = ref;

  // プロバイダ監視
  get pageTitle => _ref.watch(titleProvider);
  get managerLabel => _ref.watch(managerLabelProvider);
  get startLabel => _ref.watch(startLabelProvider);
  get endLabel => _ref.watch(endLabelProvider);
  get hintText => _ref.watch(hintTextProvider);
  get btnCaption => _ref.watch(btnCaptionProvider);
  TimeOfDay get startTimeOfDayLabel =>
      _ref.watch(startTimeOfDayLabelStateProvider);
  set startTimeOfDayLabel(TimeOfDay timeOfDay) =>
      _ref.watch(startTimeOfDayLabelStateProvider.notifier).state = timeOfDay;
  TimeOfDay get endTimeOfDayLabel => _ref.watch(endTimeOfDayLabelStateProvider);
  set endTimeOfDayLabel(TimeOfDay timeOfDay) =>
      _ref.watch(endTimeOfDayLabelStateProvider.notifier).state = timeOfDay;
  TextEditingController get managerController =>
      _ref.watch(managerControllerStateProvider.state).state;
  Result get result => _ref.watch(resultProvider.state).state;
  String get resultText => _ref.watch(resultTextProvider.state).state;

  /// 開始時刻押下時
  void onPressedFromStart(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
        context: context, initialTime: startTimeOfDayLabel);
    if (timeOfDay != null) startTimeOfDayLabel = timeOfDay;
  }

  /// 終了時刻押下時
  void onPressedFromEnd(BuildContext context) async {
    final TimeOfDay? timeOfDay =
        await showTimePicker(context: context, initialTime: endTimeOfDayLabel);
    if (timeOfDay != null) endTimeOfDayLabel = timeOfDay;
  }

  /// 計算ボタン押下時
  void onPressedFromCalc() =>
      _ref.watch(resultTextProvider.state).state = _createManHourText();

  /// 工数結果用の文字列生成
  String _createManHourText() {
    // 終了時刻 - 開始時刻の差を求める
    // ただし、開始時刻 > 終了時刻 の場合は何もしない
    int toStartMinute =
        (startTimeOfDayLabel.hour * 60) + startTimeOfDayLabel.minute;
    int toEndMinute = (endTimeOfDayLabel.hour * 60) + endTimeOfDayLabel.minute;
    if (toStartMinute > toEndMinute) return '終了時刻には開始時刻以降の時間を指定してください';

    // 作業時間を算出
    int toDiffMinute = toEndMinute - toStartMinute;
    // 作業人数を算出
    String managerCountText =
        Utils.instance.getManagerCountText(managerController.text);

    return '${managerController.text.isEmpty ? '' : '${managerController.text}\n'}${Utils.instance.toHourTextFromMinute(toDiffMinute)}h × $managerCountText人 = ${Utils.instance.toManHourTextFromMinute(toDiffMinute, int.parse(managerCountText))}人日';
  }
}
