import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/manager/Newest_books/newest_books_cubit.dart';

import 'package:book_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: [
                BestSellerItem(
                  books: state.books[index],
                ),
                const SizedBox(
                  height: 26,
                )
              ]);
            },
          );
        } else if (state is NewestBooksFailure) {
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
