part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  List<BookModels> books;
  NewestBooksSuccess({required this.books});
}

final class NewestBooksFailure extends NewestBooksState {
  String errorMsg;
  NewestBooksFailure({required this.errorMsg});
}
