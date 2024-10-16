import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .16,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://th.bing.com/th/id/R.23ed49f2c1450b8fbc59e134e6a8e2d0?rik=zzYkKJsSf7IGpw&pid=ImgRaw&r=0",
                    ),
                  )),
            ),
          ),
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
    );
  }
}
