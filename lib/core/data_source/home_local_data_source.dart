import 'package:book_app/constants.dart';
import 'package:book_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchBestSellerBooks();
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchSimilardBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchBestSellerBooks() {
    var data = Hive.box<BookEntity>(kNewestBox);
    return data.values.toList();
  }

  @override
  List<BookEntity> fetchSimilardBooks() {
    var data = Hive.box<BookEntity>(kSimilarBox);
    return data.values.toList();
  }

  @override
  List<BookEntity> fetchFeaturedBooks() {
    var data = Hive.box<BookEntity>(kBox);
    return data.values.toList();
  }
}
