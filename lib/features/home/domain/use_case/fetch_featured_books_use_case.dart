import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/use_cases/use_case.dart';

import 'package:book_app/features/home/domain/entities/book_entity.dart';
import 'package:book_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<BookEntity, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? para]) {
    return homeRepo.fetchFeaturedBooks();
  }
}
