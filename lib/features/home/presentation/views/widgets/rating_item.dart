import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

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
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: kWhite.withOpacity(.50)),
        )
      ],
    );
  }
}
