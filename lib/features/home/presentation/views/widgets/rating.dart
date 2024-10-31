import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, required this.count, required this.rating});
  final int count;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Free",
          style: Styles.textStyle20,
        ),
        const SizedBox(
          width: 39,
        ),
        RatingItem(
          rating: rating,
          count: count,
        )
      ],
    );
  }
}
