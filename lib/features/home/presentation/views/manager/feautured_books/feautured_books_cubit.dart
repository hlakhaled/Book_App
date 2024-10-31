import 'package:bloc/bloc.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/data/models/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'feautured_books_state.dart';

class FeauturedBooksCubit extends Cubit<FeauturedBooksState> {
  FeauturedBooksCubit(this.homeRepo) : super(FeauturedBooksInitial());
  final HomeRepoImpl homeRepo;
  Future<void> fetchFeautured() async {
    emit(FeauturedBooksInitial());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
        (failure) => emit(FeauturedBooksFailure(
            errorMsg: (failure as ServiceFailure).errorMsg)),
        (books) => emit(FeauturedBooksSuccess(books: books)));
  }
}
