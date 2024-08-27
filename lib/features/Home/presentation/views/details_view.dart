import 'package:flutter/material.dart';
import 'package:pro_book/features/Home/presentation/views/widget/details_view_body/book_details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
