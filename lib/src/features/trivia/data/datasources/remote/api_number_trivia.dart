import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/trivia_model.dart';

part 'api_number_trivia.g.dart';

@RestApi(baseUrl: "http://numbersapi.com/random")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/trivia?json")
  Future<TriviaModel> getTrivia();

  @GET("/year?json")
  Future<TriviaModel> getYear();

  @GET("/date?json")
  Future<TriviaModel> getDate();

  @GET("/math?json")
  Future<TriviaModel> getMath();
}
