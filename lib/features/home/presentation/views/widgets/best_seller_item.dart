import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';

import 'package:book_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:book_app/features/home/presentation/views/widgets/rating.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.books});
  final BookModels books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kFeaturedBooksView),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImage(
            image: books.volumeInfo!.imageLinks!.thumbnail!,
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.48,
                child: Text(
                  books.volumeInfo!.title!,
                  style: Styles.textStyle20.copyWith(
                      fontFamily: kGTSectraFine, fontWeight: FontWeight.normal),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                books.volumeInfo!.authors![0],
                style: Styles.textStyle14,
              ),
              const SizedBox(height: 8),
              Rating(
                rating: books.volumeInfo?.averageRating ?? 0,
                count: books.volumeInfo?.ratingsCount ?? 0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
