import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pro_book/core/utils/api_service.dart';
import 'package:pro_book/features/Home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
