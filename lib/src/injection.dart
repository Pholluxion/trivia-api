import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:numbers/src/features/trivia/data/datasources/remote/remote_datasource.dart';
import 'package:numbers/src/features/trivia/data/datasources/remote/trivia_remote_datasource.dart';
import 'package:numbers/src/features/trivia/data/repositories/trivia_repository_impl.dart';
import 'package:numbers/src/features/trivia/domain/repositories/trivia_repository.dart';
import 'package:numbers/src/features/trivia/domain/usecases/get_date_trivia_usecase.dart';
import 'package:numbers/src/features/trivia/domain/usecases/get_math_trivia_usecase.dart';
import 'package:numbers/src/features/trivia/domain/usecases/get_rand_trivia_usecase.dart';
import 'package:numbers/src/features/trivia/domain/usecases/get_year_trivia_usecase.dart';
import 'package:numbers/src/features/trivia/presentation/bloc/bloc/trivia_bloc.dart';

final locator = GetIt.instance;

void init() {
  //  bloc
  locator.registerFactory(
    () => TriviaBloc(
      getDateTrivia: locator(),
      getMathTrivia: locator(),
      getYearTrivia: locator(),
      getRandomTrivia: locator(),
    ),
  );

  // usecase
  locator.registerFactory<GetMathTrivia>(() => GetMathTrivia(locator()));
  locator.registerFactory<GetDateTrivia>(() => GetDateTrivia(locator()));
  locator.registerFactory<GetYearTrivia>(() => GetYearTrivia(locator()));
  locator.registerFactory<GetRandomTrivia>(() => GetRandomTrivia(locator()));

  // repository
  locator.registerLazySingleton<TriviaRepository>(
    () => TriviaRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );

  // data source
  locator.registerLazySingleton<RemoteDataSource>(
    () => TriviaRemoteDataSource(dio: locator(), logger: locator()),
  );

  // external
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => Logger());
}
