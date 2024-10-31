import 'package:book_app/core/utils/styles.dart';

import 'package:book_app/features/home/presentation/views/manager/similar_books/similar_books_cubit.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .16,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: EdgeInsetsDirectional.only(end: 9),
                      child: CustomImage(
                        image: state
                            .books[index].volumeInfo!.imageLinks!.thumbnail!,
                      ));
                },
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return Text(
            state.errorMsg,
            style: Styles.textStyle18,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
