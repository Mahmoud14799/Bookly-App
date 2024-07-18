import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_book/core/utils/app_router.dart';
import 'package:pro_book/constants.dart';

void main() {
  runApp(
    const ProBook(),
  );
}

class ProBook extends StatelessWidget {
  const ProBook({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
        );
      },
    );
  }
}
