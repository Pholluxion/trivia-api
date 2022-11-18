import 'package:equatable/equatable.dart';

class Trivia extends Equatable {
  final String? text;
  final String? date;
  final String? type;
  final bool? found;
  final int? number;

  const Trivia({
    this.text,
    this.date,
    this.found,
    this.number,
    this.type,
  });

  @override
  List<Object?> get props => [
        date,
        text,
        type,
        found,
        number,
      ];
}
