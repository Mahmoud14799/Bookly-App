import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/best_seller_list.dart';
import 'package:pro_book/features/Home/presentation/views/widget/appBar/custom_app_bar.dart';
import 'package:pro_book/features/Home/presentation/views/widget/featuerd_list_view.dart';
import 'package:pro_book/constants.dart';
import 'package:pro_book/core/utils/style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          const SliverAppBar(
            surfaceTintColor: kPrimaryColor,
            backgroundColor: kPrimaryColor,
            automaticallyImplyLeading: false,
            // collapsedHeight: 80.h,
            flexibleSpace: FlexibleSpaceBar(
              title: CustomAppBar(),
              titlePadding: EdgeInsets.only(left: 30, right: 30),
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const FeaturedBooksListView(),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              minHeight: 50.0.h,
              maxHeight: 50.0.h,
              child: Container(
                padding: kPadding30,
                alignment: Alignment.centerLeft,
                color: kPrimaryColor,
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ];
      },
      body: const BestSellerList(),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant _SliverAppBarDelegate oldDelegate) {
    return oldDelegate.minHeight != minHeight ||
        oldDelegate.maxHeight != maxHeight ||
        oldDelegate.child != child;
  }
}
