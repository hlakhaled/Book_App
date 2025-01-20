import 'package:bloc/bloc.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/domain/entities/book_entity.dart';

import 'package:book_app/features/home/domain/use_case/fetch_best_seller_books_use_case.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchBestSellerBooksUseCase)
      : super(NewestBooksInitial());
  final FetchBestSellerBooksUseCase fetchBestSellerBooksUseCase;
  Future<void> NewestBooks() async {
    emit(NewestBooksLoading());
    var result = await fetchBestSellerBooksUseCase.call();
    result.fold(
        (failure) => emit(
            NewestBooksFailure(errorMsg: (failure as ServiceFailure).errorMsg)),
        (books) => emit(NewestBooksSuccess(books: books)));
  }
}
