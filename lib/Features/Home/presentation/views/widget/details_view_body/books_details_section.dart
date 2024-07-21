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
          padding:
              EdgeInsets.symmetric(horizontal: hight >= 640.0 ? 125.w : 80.w),
          child: const CustomBookImage(),
        ),
        SizedBox(height: 43.h),
        Text(
          "The Jungle Book",
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
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 37.h,
        ),
        const BookAction(),
        SizedBox(
          height: hight == 640.0 ? 10 : 50,
        ),
      ],
    );
  }
}
