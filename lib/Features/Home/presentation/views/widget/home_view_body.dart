import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/custom_app_bar.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/featuerd_list_view.dart';
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
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.fontMedium,
           
          )
        ],
      ),
    );
  }
}
