part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}



final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  List<BookModels> books;
  SimilarBooksSuccess({required this.books});
}

final class SimilarBooksFailure extends SimilarBooksState {
  String errorMsg;
 SimilarBooksFailure({required this.errorMsg});
}
