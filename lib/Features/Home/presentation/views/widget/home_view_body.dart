import 'package:flutter/material.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
