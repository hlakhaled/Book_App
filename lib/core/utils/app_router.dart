import 'package:book_app/features/home/presentation/views/book_view.dart';
import 'package:book_app/features/home/presentation/views/featured_books_view.dart';
import 'package:book_app/features/search/presentation/views/search_view.dart';
import 'package:book_app/features/splash/presentation/views/splash_view.dart';
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
      builder: (context, state) => const FeaturedBooksView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
