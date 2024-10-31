import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_button.dart';
import 'package:book_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';

class FeauturedBooksItem extends StatelessWidget {
  const FeauturedBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            "The Jungle Book",
            style: Styles.textStyle30,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(color: kWhite.withOpacity(.70)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Center(
            child: RatingItem(
          rating: 2.3,
          count: 3,
        )),
        const SizedBox(
          height: 25,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              textColor: kBlack,
              color: kWhite,
              isLeft: true,
            ),
            CustomButton(
              textColor: kWhite,
              color: kPink,
            )
          ],
        ),
      ],
    );
  }
}
