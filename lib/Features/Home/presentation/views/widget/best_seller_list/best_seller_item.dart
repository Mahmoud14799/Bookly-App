import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_book/core/utils/app_router.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/book_rating_item.dart';
import 'package:pro_book/constants.dart';
import 'package:pro_book/core/utils/assets.dart';
import 'package:pro_book/core/utils/style.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsView);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.testBook), fit: BoxFit.fill),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160.w,
                    height: 40.h,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Opacity(
                      opacity: 0.5,
                    child: Text('J.K. Rowling', style: Styles.textStyle14)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20.copyWith(
                          fontFamily: kMontserrat,
                        ),
                      ),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
