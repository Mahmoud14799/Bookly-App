import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:pro_book/core/utils/api_service.dart';
import 'package:pro_book/core/utils/app_router.dart';
import 'package:pro_book/constants.dart';
import 'package:pro_book/core/utils/service_locator.dart';
import 'package:pro_book/features/Home/data/repos/home_repo_impl.dart';
import 'package:pro_book/features/Home/presentation/manger/featured_books_cubit/featured_book_cubit.dart';
import 'package:pro_book/features/Home/presentation/manger/newest_%20books_cubit/newest_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(
    const ProBook(),
  );
}

class ProBook extends StatelessWidget {
  const ProBook({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchFeaturedBooks(),
            ),
            BlocProvider(
              create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchNewestBooks(),
            )
          ],
          child: MaterialApp.router(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark()
                .copyWith(scaffoldBackgroundColor: kPrimaryColor),
          ),
        );
      },
    );
  }
}
