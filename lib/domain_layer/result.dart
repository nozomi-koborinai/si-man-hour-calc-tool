import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  const factory Result(
      {required String manager,
      required double time,
      required int peopleCount,
      required double manHour}) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  /// 工数結果ラベルに表示する文字列を生成
  String createManHourText() => '$manager\n$time';
}
