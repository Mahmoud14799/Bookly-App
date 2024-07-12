import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/best_seller_item.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/best_seller_list.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/custom_app_bar.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/featuerd_list_view.dart';
import 'package:pro_book/constants.dart';
import 'package:pro_book/core/utils/assets.dart';
import 'package:pro_book/core/utils/style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 51,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 21,
          ),
          Expanded(child: BestSellerList())
        ],
      ),
    );
  }
}


