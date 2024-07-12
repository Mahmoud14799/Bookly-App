import 'package:flutter/material.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/best_seller_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.only(bottom: 21),
        child: BestSellerListViewItem(),
      );
    });
  }
}