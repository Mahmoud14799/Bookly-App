import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_book/core/utils/app_router.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/best_seller_image_item.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/book_rating_item.dart';
import 'package:pro_book/constants.dart';
import 'package:pro_book/core/utils/style.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsView);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        child: Row(
          children: [
            const BestSellerImageItem(),
            SizedBox(
              width: 30.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 190.w,
                  height: 60.h,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Opacity(
                    opacity: 0.5,
                    child: Text('J.K. Rowling', style: Styles.textStyle14)),
                SizedBox(
                  height: 8.h.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kMontserrat,
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    const BookRating(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
