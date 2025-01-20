
import 'package:book_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> urlLancher(BookEntity books, BuildContext context) async {
  final Uri _url = Uri.parse(books.link);
  if (await canLaunchUrl(_url)) {
    await launchUrl(_url);
  } else {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Url Not Found!")));
  }
}
