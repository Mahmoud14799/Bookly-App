import 'package:flutter/material.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/features_list/custom_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
