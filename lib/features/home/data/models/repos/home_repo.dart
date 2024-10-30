import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Either<Failure, List<BookModels>> fetchBestSellerBooks();
  Either<Failure, List<BookModels>> fetchFeaturedBooks();
}
