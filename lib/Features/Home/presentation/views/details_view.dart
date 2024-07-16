import 'package:flutter/material.dart';
import 'package:pro_book/features/Home/presentation/views/widget/appBar/app_bar_details_view.dart';
import 'package:pro_book/features/Home/presentation/views/widget/appBar/custom_app_bar.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: AppBarDetailsView(),
        )],
      ),
    );
  }
}
