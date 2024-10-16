import 'package:book_app/features/home/presentation/views/widgets/book_body.dart';
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookBody()),
    );
  }
}
