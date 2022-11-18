import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/src/core/usecases/usecases.dart';
import 'package:numbers/src/features/trivia/domain/entities/trivia_entity.dart';
import 'package:numbers/src/features/trivia/domain/usecases/get_date_trivia_usecase.dart';
import 'package:numbers/src/features/trivia/domain/usecases/get_math_trivia_usecase.dart';
import 'package:numbers/src/features/trivia/domain/usecases/get_rand_trivia_usecase.dart';
import 'package:numbers/src/features/trivia/domain/usecases/get_year_trivia_usecase.dart';

part 'trivia_event.dart';
part 'trivia_state.dart';

class TriviaBloc extends Bloc<TriviaEvent, TriviaState> {
  final GetDateTrivia getDateTrivia;
  final GetMathTrivia getMathTrivia;
  final GetYearTrivia getYearTrivia;
  final GetRandomTrivia getRandomTrivia;

  TriviaBloc({
    required this.getDateTrivia,
    required this.getMathTrivia,
    required this.getYearTrivia,
    required this.getRandomTrivia,
  }) : super(EmtyTriviaState()) {
    on<GetRandomTriviaEvent>(_getRandomTrivia);
    on<GetDateTriviaEvent>(_getDateTrivia);
    on<GetMathTriviaEvent>(_getMathTrivia);
    on<GetYearTriviaEvent>(_getYearTrivia);
  }

  void _getRandomTrivia(
      GetRandomTriviaEvent event, Emitter<TriviaState> emit) async {
    emit(LoadingTriviaState());
    try {
      final trivia = await getRandomTrivia.call(NoParams());
      emit(LoadedTriviaState(trivia: trivia));
    } catch (ex) {
      emit(ErrorTrivaState(message: ex.toString()));
    }
  }

  void _getDateTrivia(
      GetDateTriviaEvent event, Emitter<TriviaState> emit) async {
    emit(LoadingTriviaState());
    try {
      final trivia = await getDateTrivia.call(NoParams());
      emit(LoadedTriviaState(trivia: trivia));
    } catch (ex) {
      emit(ErrorTrivaState(message: ex.toString()));
    }
  }

  void _getMathTrivia(
      GetMathTriviaEvent event, Emitter<TriviaState> emit) async {
    emit(LoadingTriviaState());
    try {
      final trivia = await getMathTrivia.call(NoParams());
      emit(LoadedTriviaState(trivia: trivia));
    } catch (ex) {
      emit(ErrorTrivaState(message: ex.toString()));
    }
  }

  void _getYearTrivia(
      GetYearTriviaEvent event, Emitter<TriviaState> emit) async {
    emit(LoadingTriviaState());
    try {
      final trivia = await getYearTrivia.call(NoParams());
      emit(LoadedTriviaState(trivia: trivia));
    } catch (ex) {
      emit(ErrorTrivaState(message: ex.toString()));
    }
  }
}
