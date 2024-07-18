import 'package:flutter/material.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/best_seller_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20, left: 30),
            child: FittedBox(
                fit: BoxFit.fitWidth, child: BestSellerListViewItem()),
          );
        });
  }
}
