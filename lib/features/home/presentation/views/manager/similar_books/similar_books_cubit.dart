import 'package:bloc/bloc.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/data/models/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';


part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  HomeRepoImpl home;

  SimilarBooksCubit(this.home) : super(SimilarBooksInitial());
  void similarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await home.fetchSimilardBooks(category: "");
    result.fold(
        (failure) => emit(SimilarBooksFailure(
            errorMsg: (failure as ServiceFailure).errorMsg)),
        (books) => emit(SimilarBooksSuccess(books: books)));
  }
}
