import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/app_router.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
              .apply(bodyColor: kWhite),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router);
  }
}
