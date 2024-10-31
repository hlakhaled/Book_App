import 'package:book_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarFeauturedBooks extends StatelessWidget {
  const AppBarFeauturedBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.close)),
          const Icon(Icons.shopping_cart_outlined)
        ],
      ),
    );
  }
}
