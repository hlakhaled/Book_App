import 'package:book_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return const Column(children: [
          BestSellerItem(),
          SizedBox(
            height: 26,
          )
        ]);
      },
    );
  }
}
