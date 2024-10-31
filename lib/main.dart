import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:book_app/features/home/data/models/repos/home_repo_impl.dart';
import 'package:book_app/features/home/presentation/views/manager/Newest_books/newest_books_cubit.dart';
import 'package:book_app/features/home/presentation/views/manager/feautured_books/feautured_books_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeauturedBooksCubit(getIt.get<HomeRepoImpl>())),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()))
      ],
      child: MaterialApp.router(
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
                    .apply(bodyColor: kWhite),
          ),
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router),
    );
  }
}
