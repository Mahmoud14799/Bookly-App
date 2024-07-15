import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_book/features/splash/presentation/views/splash_view.dart';
import 'package:pro_book/constants.dart';

void main() {
  runApp(const ProBook());
}

class ProBook extends StatelessWidget {
  const ProBook({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}
