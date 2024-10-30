part of 'feautured_books_cubit.dart';

sealed class FeauturedBooksState extends Equatable {
  const FeauturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeauturedBooksInitial extends FeauturedBooksState {}

final class FeauturedBooksLoading extends FeauturedBooksState {}

final class FeauturedBooksSuccess extends FeauturedBooksState {
  List<BookModels> books;
  FeauturedBooksSuccess({required this.books});
}

final class FeauturedBooksFailure extends FeauturedBooksState {
  String errorMsg;
  FeauturedBooksFailure({required this.errorMsg});
}
