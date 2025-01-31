import 'package:hive/hive.dart';
part 'book_entity.g.dart';
@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String authorName;
  @HiveField(2)
  final num rating;
  @HiveField(3)
  final num price;
  @HiveField(4)
  final String image;
  @HiveField(5)
  final String bookId;
    @HiveField(6)
  final String link;

  const BookEntity(
      {required this.title,
      required this.authorName,
      required this.rating,
      required this.price,
      required this.image,
      required this.bookId,
      required this.link
      });
}
