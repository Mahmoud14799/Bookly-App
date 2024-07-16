import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:pro_book/core/utils/app_router.dart';
import 'package:pro_book/constants.dart';

void main() {
  runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => const ProBook(),
  ),
  );
}

class ProBook extends StatelessWidget {
  const ProBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
    );
  }
}
