import 'package:flutter/material.dart';

class AppBarFeauturedBooks extends StatelessWidget {
  const AppBarFeauturedBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Icons.close), Icon(Icons.shopping_cart_outlined)],
      ),
    );
  }
}
