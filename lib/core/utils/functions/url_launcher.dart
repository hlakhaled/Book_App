import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> urlLancher(BookModels books, BuildContext context) async {
  final Uri _url = Uri.parse(books.volumeInfo!.previewLink!);
  if (await canLaunchUrl(_url)) {
    await launchUrl(_url);
  } else {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Url Not Found!")));
  }
}
