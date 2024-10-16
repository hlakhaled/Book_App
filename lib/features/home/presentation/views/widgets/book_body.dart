import 'package:book_app/core/utils/styles.dart';

import 'package:book_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';

class BookBody extends StatelessWidget {
  const BookBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: CustomAppBar(),
            ),
          ),
          SliverToBoxAdapter(child: BookListView()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              "Best Seller",
              style: Styles.textStyle18,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 9,
            ),
          ),
          SliverFillRemaining(child: BestSellerListView()),
        ],
      ),
    );
  }
}
