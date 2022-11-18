// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trivia_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TriviaModel _$TriviaModelFromJson(Map<String, dynamic> json) => TriviaModel(
      text: json['text'] as String?,
      date: json['date'] as String?,
      type: json['type'] as String?,
      found: json['found'] as bool?,
      number: json['number'] as int?,
    );

Map<String, dynamic> _$TriviaModelToJson(TriviaModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'date': instance.date,
      'type': instance.type,
      'found': instance.found,
      'number': instance.number,
    };
