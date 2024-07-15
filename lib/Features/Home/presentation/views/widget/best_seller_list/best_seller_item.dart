import 'package:flutter/material.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/book_rating_item.dart';
import 'package:pro_book/constants.dart';
import 'package:pro_book/core/utils/assets.dart';
import 'package:pro_book/core/utils/style.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                width: MediaQuery.of(context).size.width * 0.6,
                  child: const Text(
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text('J.K. Rowling', style: Styles.textStyle14),
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
    );
  }
}
