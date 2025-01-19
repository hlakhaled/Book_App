import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/use_cases/use_case.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchBestSellerBooksUseCase extends UseCase<BookModels, NoParam> {
  final HomeRepo homeRepo;

  FetchBestSellerBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookModels>>> call([NoParam? para])async{
    return await homeRepo.fetchBestSellerBooks();
  }
}

