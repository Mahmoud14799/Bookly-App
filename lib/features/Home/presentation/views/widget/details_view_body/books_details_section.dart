import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_book/core/utils/style.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/book_rating_item.dart';
import 'package:pro_book/features/Home/presentation/views/widget/details_view_body/books_action.dart';
import 'package:pro_book/features/Home/presentation/views/widget/features_list/custom_book_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: hight <= 640.0 ? 138.w : 120.w, vertical: 10.h),
          child: const CustomBookImage(
            imageUrl: 'https://images.app.goo.gl/HTyYkesx9Akgb1cDA',
          ),
        ),
        SizedBox(height: 43.h),
        Text(
          hight.toString(),
          style: Styles.textStyle30,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(height: 15.h),
        const BookRating(
          averageRating: 5,
          countRating: 100,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 37.h,
        ),
        const BookAction(),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
