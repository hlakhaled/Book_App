import 'package:book_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .16,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
                padding: EdgeInsetsDirectional.only(end: 9),
                child: CustomImage());
          },
        ),
      ),
    );
  }
}
