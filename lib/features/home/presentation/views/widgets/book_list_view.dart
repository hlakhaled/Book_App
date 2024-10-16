import 'package:book_app/features/home/presentation/views/widgets/image_item.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const ImageItem();
        },
      ),
    );
  }
}
