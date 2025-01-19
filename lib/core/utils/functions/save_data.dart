  import 'package:book_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveData(List<BookEntity> data,String boxName) {
    var box = Hive.box(boxName);
    box.addAll(data);
  }