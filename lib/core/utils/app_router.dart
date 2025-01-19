import 'package:book_app/core/utils/service_locator.dart';
import 'package:book_app/features/home/data/models/book_models/book_models.dart';
import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/features/home/presentation/views/book_view.dart';
import 'package:book_app/features/home/presentation/views/featured_books_view.dart';
import 'package:book_app/features/home/presentation/views/manager/similar_books/similar_books_cubit.dart';
import 'package:book_app/features/search/presentation/views/search_view.dart';
import 'package:book_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kBookView = "/BookView";
  static const kFeaturedBooksView = "/FeaturedBooksView";
  static const kSearchView = "/SearchView";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kBookView,
      builder: (context, state) => const BookView(),
    ),
    GoRoute(
      path: kFeaturedBooksView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child:  FeaturedBooksView(book: state.extra as BookModels
          
        ),
      ),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
