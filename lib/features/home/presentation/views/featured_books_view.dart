import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/presentation/views/manager/similar_books/similar_books_cubit.dart';

import 'package:book_app/features/home/presentation/views/widgets/feautured_books_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksView extends StatefulWidget {
  final BookModels book;
  const FeaturedBooksView({super.key, required this.book});

  @override
  State<FeaturedBooksView> createState() => _FeaturedBooksViewState();
}

class _FeaturedBooksViewState extends State<FeaturedBooksView> {
  @override
  void initState() {
    context
        .read<SimilarBooksCubit>()
        .similarBooks(category: widget.book.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: FeauturedBooksBody(
        books: widget.book,
      )),
    );
  }
}
