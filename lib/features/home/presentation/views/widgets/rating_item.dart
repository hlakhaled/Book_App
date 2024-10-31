import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key, required this.count, required this.rating});
  final double rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          "(",
          style: Styles.textStyle14.copyWith(color: kWhite.withOpacity(.50)),
        ),
        Text(
          count.toString(),
          style: Styles.textStyle14.copyWith(color: kWhite.withOpacity(.50)),
        ),
        Text(
          ")",
          style: Styles.textStyle14.copyWith(color: kWhite.withOpacity(.50)),
        ),
      ],
    );
  }
}
