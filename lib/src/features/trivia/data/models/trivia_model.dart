import 'package:json_annotation/json_annotation.dart';
import 'package:numbers/src/features/trivia/domain/entities/trivia_entity.dart';

part 'trivia_model.g.dart';

@JsonSerializable()
class TriviaModel extends Trivia {
  const TriviaModel({
    String? text,
    String? date,
    String? type,
    bool? found,
    int? number,
  }) : super(
          date: date,
          found: found,
          number: number,
          text: text,
          type: type,
        );

  factory TriviaModel.fromJson(Map<String, dynamic> json) =>
      _$TriviaModelFromJson(json);
  Map<String, dynamic> toJson() => _$TriviaModelToJson(this);
}
