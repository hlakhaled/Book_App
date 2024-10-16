
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "19.99 €",
          style: Styles.textStyle20,
        ),
        const SizedBox(
          width: 39,
        ),
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
        const Text(
          "(2390)",
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
