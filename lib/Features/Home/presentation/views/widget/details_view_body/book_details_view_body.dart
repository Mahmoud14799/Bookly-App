import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_book/core/utils/style.dart';
import 'package:pro_book/features/Home/presentation/views/widget/appBar/app_bar_details_view.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/book_rating_item.dart';
import 'package:pro_book/features/Home/presentation/views/widget/features_list/custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppBarDetailsView(),
          SizedBox(height: 30.h),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: hight == 640.0 ? 100.w : 80.w),
            child: const CustomBookImage(),
          ),
          SizedBox(height: 43.h),
          Text(
            "The Jungle Book",
            style: Styles.textStyle30,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(height: 15.h),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 37.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 130.w,
                height: 48.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    topLeft: Radius.circular(18),
                  ),
                ),
                child: Center(
                    child: Text(
                  hight.toString(),
                  style: Styles.textStyle18.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                width: 130.w,
                height: 48.h,
                decoration: const BoxDecoration(
                  color: Color(0xffEF8262),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                ),
                child: Center(
                    child: Text(
                  'Free preview',
                  style:
                      Styles.textStyle16.copyWith(fontWeight: FontWeight.w700),
                )),
              )
            ],
          ),
          SizedBox(
            height: hight == 640.0 ? 10 : 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 177),
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const LikeList(),
        ],
      ),
    );
  }
}

class LikeList extends StatelessWidget {
  const LikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: const CustomBookImage(),
          );
        },
      ),
    );
  }
}
