
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T, param> {
  Future<Either<Failure, List<T>>> call([param para]);
}
class NoParam{

}