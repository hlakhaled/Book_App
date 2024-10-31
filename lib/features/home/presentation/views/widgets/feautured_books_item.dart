import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/functions/url_launcher.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_button.dart';
import 'package:book_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeauturedBooksItem extends StatelessWidget {
  const FeauturedBooksItem({super.key, required this.books});
  final BookModels books;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            books.volumeInfo!.title!,
            textAlign: TextAlign.center,
            style: Styles.textStyle30,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            books.volumeInfo!.authors![0],
            style: Styles.textStyle18.copyWith(color: kWhite.withOpacity(.70)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
            child: RatingItem(
          rating: books.volumeInfo!.averageRating ?? 0,
          count: books.volumeInfo!.ratingsCount ?? 0,
        )),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {},
              text: "Free",
              textColor: kBlack,
              color: kWhite,
              isLeft: true,
            ),
            CustomButton(
              onPressed: () {
                urlLancher(books, context);
              },
              text: "Preview",
              textColor: kWhite,
              color: kPink,
            )
          ],
        ),
      ],
    );
  }
}
