import 'package:flutter/material.dart';
import 'package:pro_book/core/utils/assets.dart';

class BestSellerImageItem extends StatelessWidget {
  const BestSellerImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              image: AssetImage(AssetsData.testBook), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
