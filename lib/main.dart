import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_book/core/utils/app_router.dart';
import 'package:pro_book/constants.dart';

void main() {
  runApp(
    DevicePreview(builder: (context) => const ProBook()),
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
        return MaterialApp.router(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
        );
      },
    );
  }
}
