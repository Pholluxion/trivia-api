part of 'trivia_bloc.dart';

abstract class TriviaState extends Equatable {
  const TriviaState();

  @override
  List<Object> get props => [];
}

class EmtyTriviaState extends TriviaState {}

class LoadingTriviaState extends TriviaState {}

class LoadedTriviaState extends TriviaState {
  final Trivia trivia;

  const LoadedTriviaState({required this.trivia});
}

class ErrorTrivaState extends TriviaState {
  final String message;

  const ErrorTrivaState({required this.message});
}
