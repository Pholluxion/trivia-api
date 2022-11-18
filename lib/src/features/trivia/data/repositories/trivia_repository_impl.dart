import 'package:numbers/src/features/trivia/data/datasources/remote/remote_datasource.dart';
import 'package:numbers/src/features/trivia/data/models/trivia_model.dart';
import 'package:numbers/src/features/trivia/domain/repositories/trivia_repository.dart';

class TriviaRepositoryImpl implements TriviaRepository {
  final RemoteDataSource remoteDataSource;

  TriviaRepositoryImpl({required this.remoteDataSource});

  @override
  Future<TriviaModel> getRandomTrivia() async {
    return await remoteDataSource.getRandomTrivia();
  }

  @override
  Future<TriviaModel> getRandomTriviaDate() async {
    return await remoteDataSource.getRandomTriviaDate();
  }

  @override
  Future<TriviaModel> getRandomTriviaMath() async {
    return await remoteDataSource.getRandomTriviaMath();
  }

  @override
  Future<TriviaModel> getRandomTriviaYear() async {
    return await remoteDataSource.getRandomTriviaYear();
  }
}
