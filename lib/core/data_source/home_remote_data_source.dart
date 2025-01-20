import 'package:book_app/constants.dart';

import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/core/utils/functions/save_data.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';

import 'package:book_app/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchBestSellerBooks();
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchSimilardBooks({required String category});
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<BookEntity>> fetchBestSellerBooks() async {
    var data = await apiService.get(
        endpoint: "volumes?Filtering=free-ebooks&q=programming");
    saveData(bookList(data), kNewestBox);
    return bookList(data);
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endpoint:
            "volumes?Filtering=free-ebooks&q=computer science&sorting=newest");
    saveData(bookList(data), kBox);
    return bookList(data);
  }

  @override
  Future<List<BookEntity>> fetchSimilardBooks(
      {required String category}) async {
    var data = await apiService.get(
        endpoint:
            "volumes?Filtering=free-ebooks&q=$category &sorting=relevance");
    saveData(bookList(data), kSimilarBox);
    return bookList(data);
  }

  List<BookEntity> bookList(Map<String, dynamic> data) {
    List<BookEntity> book = [];
    for (var bookData in data["items"]) {
      book.add(BookModels.fromJson(bookData));
    }
    return book;
  }
}
