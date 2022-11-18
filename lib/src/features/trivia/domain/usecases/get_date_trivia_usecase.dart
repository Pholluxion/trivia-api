import 'package:numbers/src/core/usecases/usecases.dart';
import 'package:numbers/src/features/trivia/domain/entities/trivia_entity.dart';

import '../repositories/trivia_repository.dart';

class GetDateTrivia implements UseCase<Trivia, NoParams> {
  final TriviaRepository triviaRepository;

  GetDateTrivia(this.triviaRepository);

  @override
  Future<Trivia> call(NoParams params) async {
    return await triviaRepository.getRandomTriviaDate();
  }
}
