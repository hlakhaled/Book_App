import 'package:book_app/features/home/presentation/views/widgets/feautured_books_body.dart';
import 'package:flutter/material.dart';

class FeaturedBooksView extends StatelessWidget {
  const FeaturedBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: FeauturedBooksBody()),
    );
  }
}
