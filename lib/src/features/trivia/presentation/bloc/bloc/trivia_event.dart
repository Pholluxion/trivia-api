part of 'trivia_bloc.dart';

abstract class TriviaEvent extends Equatable {
  const TriviaEvent();

  @override
  List<Object> get props => [];
}

class GetMathTriviaEvent extends TriviaEvent {}

class GetDateTriviaEvent extends TriviaEvent {}

class GetYearTriviaEvent extends TriviaEvent {}

class GetRandomTriviaEvent extends TriviaEvent {}
