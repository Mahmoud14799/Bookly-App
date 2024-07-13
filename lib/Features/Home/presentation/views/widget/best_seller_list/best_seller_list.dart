import 'package:flutter/material.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/best_seller_list/best_seller_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 10,
    padding: EdgeInsets.zero,
    itemBuilder: (context, index) {
    
      return const Padding(
        padding: EdgeInsets.only(bottom: 10 ,left: 30),
        child: BestSellerListViewItem(),
      );
    });
  }
}