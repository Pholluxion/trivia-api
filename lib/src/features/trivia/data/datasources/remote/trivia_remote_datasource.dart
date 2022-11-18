import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:numbers/src/features/trivia/data/datasources/remote/remote_datasource.dart';
import 'package:numbers/src/features/trivia/data/models/trivia_model.dart';

import 'api_number_trivia.dart';

class TriviaRemoteDataSource implements RemoteDataSource {
  final Logger logger;
  final Dio dio;

  TriviaRemoteDataSource({required this.logger, required this.dio});

  @override
  Future<TriviaModel> getRandomTrivia() {
    try {
      final client = RestClient(dio);

      client.getTrivia().then((it) => logger.i(it));

      return client.getTrivia();
    } catch (_) {
      throw Exception("Error obteniendo un random trivia");
    }
  }

  @override
  Future<TriviaModel> getRandomTriviaDate() {
    try {
      final client = RestClient(dio);

      client.getDate().then((it) => logger.i(it));

      return client.getDate();
    } catch (_) {
      throw Exception("Error obteniendo un random trivia");
    }
  }

  @override
  Future<TriviaModel> getRandomTriviaMath() {
    try {
      final client = RestClient(dio);

      client.getMath().then((it) => logger.i(it));

      return client.getMath();
    } catch (_) {
      throw Exception("Error obteniendo un random trivia");
    }
  }

  @override
  Future<TriviaModel> getRandomTriviaYear() {
    try {
      final client = RestClient(dio);

      client.getYear().then((it) => logger.i(it));

      return client.getYear();
    } catch (_) {
      throw Exception("Error obteniendo un random trivia");
    }
  }
}
