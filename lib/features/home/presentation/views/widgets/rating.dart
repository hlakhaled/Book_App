import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/widgets/rating_item.dart';
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
        const RatingItem()
      ],
    );
  }
}
