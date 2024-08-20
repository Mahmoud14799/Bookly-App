import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_book/features/Home/presentation/views/widget/appBar/app_bar_details_view.dart';
import 'package:pro_book/features/Home/presentation/views/widget/details_view_body/books_details_section.dart';
import 'package:pro_book/features/Home/presentation/views/widget/details_view_body/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20.h,
        ),
        const AppBarDetailsView(),
        const BooksDetailsSection(),
        const SimilarBooksSection(),
      ],
    );
  }
}
