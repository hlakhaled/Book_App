import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/features/home/data/models/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerLazySingleton<HomeRepoImpl>(
      () => HomeRepoImpl(getIt.get<ApiService>()));
}
