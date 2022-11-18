import '../../../../core/usecases/usecases.dart';
import '../entities/trivia_entity.dart';
import '../repositories/trivia_repository.dart';

class GetYearTrivia implements UseCase<Trivia, NoParams> {
  final TriviaRepository triviaRepository;

  GetYearTrivia(this.triviaRepository);

  @override
  Future<Trivia> call(NoParams params) async {
    return await triviaRepository.getRandomTriviaYear();
  }
}
