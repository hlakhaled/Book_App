import 'package:book_app/constants.dart';

import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:book_app/features/home/domain/entities/book_entity.dart';

import 'package:book_app/features/home/domain/use_case/fetch_best_seller_books_use_case.dart';
import 'package:book_app/features/home/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:book_app/features/home/presentation/views/manager/Newest_books/newest_books_cubit.dart';
import 'package:book_app/features/home/presentation/views/manager/feautured_books/feautured_books_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  setUp();

  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  await Hive.openBox<BookEntity>(kSimilarBox);
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeauturedBooksCubit(
                fetchFeaturedBooksUseCase:
                    getIt.get<FetchFeaturedBooksUseCase>())
              ..fetchFeautured()),
        BlocProvider(
            create: (context) =>
                NewestBooksCubit(getIt.get<FetchBestSellerBooksUseCase>())
                  ..NewestBooks())
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
