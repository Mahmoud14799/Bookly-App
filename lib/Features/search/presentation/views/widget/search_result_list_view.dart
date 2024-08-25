import 'package:flutter/material.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/newset_books_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            // child: BookListViewItem(

            // ),
            child: Text('dfdf'),
          );
        });
  }
}
