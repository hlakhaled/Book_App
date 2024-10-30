import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/featured_books_view.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:book_app/features/home/presentation/views/widgets/rating.dart';

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const FeaturedBooksView()),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomImage(),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.48,
                child: Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Styles.textStyle20.copyWith(
                      fontFamily: kGTSectraFine, fontWeight: FontWeight.normal),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Text(
                "J.K. Rowling",
                style: Styles.textStyle14,
              ),
              const SizedBox(height: 8),
              const Rating()
            ],
          ),
        ],
      ),
    );
  }
}
