import 'package:book_app/core/data_source/home_local_data_source.dart';
import 'package:book_app/core/data_source/home_remote_data_source.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/features/home/domain/use_case/fetch_best_seller_books_use_case.dart';
import 'package:book_app/features/home/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:book_app/features/home/domain/use_case/fetch_similar_books.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRemoteDataSourceImpl>(
      HomeRemoteDataSourceImpl(apiService: getIt.get<ApiService>()));
  getIt.registerSingleton<HomeLocalDataSourceImpl>(HomeLocalDataSourceImpl());
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
      homeRemoteDataSource: getIt.get<HomeRemoteDataSourceImpl>(),
      homeLocalDataSource: getIt.get<HomeLocalDataSourceImpl>()));
  getIt.registerSingleton<FetchFeaturedBooksUseCase>(
      FetchFeaturedBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>()));
  getIt.registerSingleton<FetchBestSellerBooksUseCase>(
      FetchBestSellerBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>()));
  getIt.registerSingleton<FetchSimilarBooks>(
      FetchSimilarBooks(homeRepo: getIt.get<HomeRepoImpl>()));
}
