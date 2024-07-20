import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_book/core/utils/style.dart';
import 'package:pro_book/features/Home/presentation/views/widget/appBar/app_bar_details_view.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/book_rating_item.dart';
import 'package:pro_book/features/Home/presentation/views/widget/features_list/custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppBarDetailsView(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.w),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43),
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
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 75),
            child: BookRating(),
          ),
        ],
      ),
    );
  }
}
