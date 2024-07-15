import 'package:flutter/material.dart';
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
          SliverAppBar(
          
            collapsedHeight: MediaQuery.of(context).size.height * 1 / 11,
            surfaceTintColor: kPrimaryColor,
            backgroundColor: kPrimaryColor,
            automaticallyImplyLeading: false,
            flexibleSpace: const Padding(
              padding: EdgeInsets.only(left: 30, top: 30, right: 15),
              child: CustomAppBar(),
            ),
            pinned: true,
          ),
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FeaturedBooksListView(),
                SizedBox(
                  height: 51,
                ),
              ],
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              minHeight: 50.0,
              maxHeight: 50.0,
              child: Container(
                padding: kPadding30,
                alignment: Alignment.centerLeft,
                color: kPrimaryColor,
                child: const Text(
                  'Best Seller',
                  style: Styles.textStyle18,
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
