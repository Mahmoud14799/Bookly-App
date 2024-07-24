import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_book/core/utils/style.dart';
import 'package:pro_book/features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:pro_book/features/search/presentation/views/widget/search_result_list_view.dart';

import '../../../../Home/presentation/views/widget/best_seller_list/best_seller_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
          ),
          const CustomSearchTextField(),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
