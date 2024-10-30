import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/widgets/Books_list_view.dart';
import 'package:book_app/features/home/presentation/views/widgets/app_bar_feautured_books.dart';

import 'package:book_app/features/home/presentation/views/widgets/feautured_books_item.dart';

import 'package:book_app/features/home/presentation/views/widgets/image_item.dart';

import 'package:flutter/material.dart';

class FeauturedBooksBody extends StatelessWidget {
  const FeauturedBooksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: AppBarFeauturedBooks()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          const SliverToBoxAdapter(child: Center(child: ImageItem())),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 31,
            ),
          ),
          const SliverToBoxAdapter(
            child: FeauturedBooksItem(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "You can also like",
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(child: BooksListView())
        ],
      ),
    );
  }
}
