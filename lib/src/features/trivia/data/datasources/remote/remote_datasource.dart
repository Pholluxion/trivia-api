import 'package:numbers/src/features/trivia/data/models/trivia_model.dart';

abstract class RemoteDataSource {
  Future<TriviaModel> getRandomTrivia();
  Future<TriviaModel> getRandomTriviaDate();
  Future<TriviaModel> getRandomTriviaYear();
  Future<TriviaModel> getRandomTriviaMath();
}
