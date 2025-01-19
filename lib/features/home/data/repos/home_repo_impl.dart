import 'package:book_app/core/data_source/home_local_data_source.dart';
import 'package:book_app/core/data_source/home_remote_data_source.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/domain/entities/book_entity.dart';
import 'package:book_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookModels>>> fetchBestSellerBooks() async {
    try {
      var data;

      data = homeLocalDataSource.fetchBestSellerBooks();
      if (data.isNotEmpty) {
        return right(data);
      }
      data = homeRemoteDataSource.fetchBestSellerBooks();
      return right(data);
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
      var data;
data = homeLocalDataSource.fetchFeaturedBooks();
      if (data.isNotEmpty) {
        return right(data);
      }
      data = homeRemoteDataSource.fetchFeaturedBooks();
      return right(data);
 
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
      var data;
data = homeLocalDataSource.fetchSimilardBooks();
      if (data.isNotEmpty) {
        return right(data);
      }
      data = homeRemoteDataSource.fetchSimilardBooks(category: category);
      return right(data);
 
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      } else {
        return left(ServiceFailure(e.toString()));
      }
    }
  }
}
