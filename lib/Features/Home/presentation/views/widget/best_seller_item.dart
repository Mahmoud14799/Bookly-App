import 'package:flutter/material.dart';
import 'package:pro_book/constants.dart';
import 'package:pro_book/core/utils/assets.dart';
import 'package:pro_book/core/utils/style.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Harry Potter',
                style: Styles.textStyle20,
              ),
              const Text(
                'and the Goblet of Fire',
                style: Styles.textStyle20,
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
                  const SizedBox(
                    width: 35.3,
                  ),
                  Icon(
                    size: 15,
                    Icons.star,
                    color: Colors.yellow.shade700,
                  ),
                  const SizedBox(
                    width: 6.2,
                  ),
                  const Text('4.8', style: Styles.textStyle16),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('(2551)', style: Styles.textStyle14),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
