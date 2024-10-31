import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/manager/feautured_books/feautured_books_cubit.dart';
import 'package:book_app/features/home/presentation/views/widgets/image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeauturedBooksCubit, FeauturedBooksState>(
      builder: (context, state) {
        if (state is FeauturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kFeaturedBooksView,
                        extra: state.books[index]);
                  },
                  child: ImageItem(
                    image:
                        state.books[index].volumeInfo!.imageLinks!.thumbnail ??
                            'assets/images/placeholder.png',
                  ),
                );
              },
            ),
          );
        } else if (state is FeauturedBooksFailure) {
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
