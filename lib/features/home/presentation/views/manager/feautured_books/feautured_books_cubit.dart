import 'package:bloc/bloc.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/domain/entities/book_entity.dart';

import 'package:book_app/features/home/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:equatable/equatable.dart';

part 'feautured_books_state.dart';

class FeauturedBooksCubit extends Cubit<FeauturedBooksState> {
  FeauturedBooksCubit({required this.fetchFeaturedBooksUseCase})
      : super(FeauturedBooksInitial());
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;
  Future<void> fetchFeautured() async {
    emit(FeauturedBooksInitial());
    var result = await fetchFeaturedBooksUseCase.call();
    result.fold(
        (failure) => emit(FeauturedBooksFailure(
            errorMsg: (failure as ServiceFailure).errorMsg)),
        (books) => emit(FeauturedBooksSuccess(books: books)));
  }
}
