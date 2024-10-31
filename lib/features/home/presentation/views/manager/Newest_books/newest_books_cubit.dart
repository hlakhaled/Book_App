import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/data/models/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepoImpl homeRepo;
  Future<void> NewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
        (failure) => emit(NewestBooksFailure(errorMsg: failure.toString())),
        (books) => emit(NewestBooksSuccess(books: books)));
  }
}
