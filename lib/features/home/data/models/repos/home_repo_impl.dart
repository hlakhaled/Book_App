import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/data/models/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModels>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endpoint: "volumes?Filtering=free-ebooks&q=programming");

      List<BookModels> books = [];
      for (var element in data["items"]) {
        books.add(BookModels.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      } else {
        return left(ServiceFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              "volumes?Filtering=free-ebooks&q=computer science&sorting=newest");

      List<BookModels> books = [];
      for (var element in data["items"]) {
        books.add(BookModels.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      } else {
        return left(ServiceFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchSimilardBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endpoint:
              "volumes?Filtering=free-ebooks&q=computer science &sorting=relevance");
      List<BookModels> books = [];
      for (var element in data["items"]) {
        books.add(BookModels.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      } else {
        return left(ServiceFailure(e.toString()));
      }
    }
  }
}
