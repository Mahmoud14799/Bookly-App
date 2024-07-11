import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_book/Features/splash/presentations/views/splash_view.dart';

void main() {
  runApp(const ProBook());
}

class ProBook extends StatelessWidget {
  const ProBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}
