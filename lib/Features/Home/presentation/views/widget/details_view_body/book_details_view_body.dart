import 'package:flutter/material.dart';
import 'package:pro_book/features/Home/presentation/views/widget/appBar/app_bar_details_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [AppBarDetailsView()],
    );
  }
}
