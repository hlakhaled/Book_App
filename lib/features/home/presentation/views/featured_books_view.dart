
import 'package:book_app/features/home/domain/entities/book_entity.dart';
import 'package:book_app/features/home/presentation/views/manager/similar_books/similar_books_cubit.dart';

import 'package:book_app/features/home/presentation/views/widgets/feautured_books_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksView extends StatefulWidget {
  final BookEntity book;
  const FeaturedBooksView({super.key, required this.book});

  @override
  State<FeaturedBooksView> createState() => _FeaturedBooksViewState();
}

class _FeaturedBooksViewState extends State<FeaturedBooksView> {
  @override
  void initState() {
    context
        .read<SimilarBooksCubit>()
        .similarBooks(category: "Computer Science");
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
