import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/use_cases/use_case.dart';

import 'package:book_app/features/home/domain/entities/book_entity.dart';
import 'package:book_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchSimilarBooks extends UseCase<BookEntity, String> {
  final HomeRepo homeRepo;

  FetchSimilarBooks({required this.homeRepo});
  @override
  Future<Either<Failure, List<BookEntity>>> call([String? para]) {
    return homeRepo.fetchSimilardBooks(category: para!);
  }
}
