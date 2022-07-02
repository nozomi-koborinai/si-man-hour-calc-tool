// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      manager: json['manager'] as String,
      time: (json['time'] as num).toDouble(),
      peopleCount: json['peopleCount'] as int,
      manHour: (json['manHour'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'manager': instance.manager,
      'time': instance.time,
      'peopleCount': instance.peopleCount,
      'manHour': instance.manHour,
    };
