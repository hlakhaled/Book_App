import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle textStyle18 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 18);
  static const TextStyle textStyle14 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 14);
  static TextStyle textStyle20 =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold); //notcie
  static const TextStyle textStyle16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  static const TextStyle textStyle30 = TextStyle(
      fontSize: 30, fontWeight: FontWeight.w400, fontFamily: kGTSectraFine);
  static const TextStyle textStyle15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w800,
  );
}
