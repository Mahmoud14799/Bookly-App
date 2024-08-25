import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_book/core/utils/app_router.dart';
import 'package:pro_book/features/Home/data/models/book_model/book_model.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/newsed_books_image_item.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/book_rating_item.dart';
import 'package:pro_book/constants.dart';
import 'package:pro_book/core/utils/style.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsView);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        child: Row(
          children: [
            BestSellerImageItem(
              imageUrl: book.volumeInfo.imageLinks.thumbnail,
            ),
            SizedBox(
              width: 30.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 190.w,
                  height: 60.h,
                  child: Text(
                    book.volumeInfo.title!,
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  width: 210.w,
                  height: 20.h,
                  child: Opacity(
                      opacity: 0.5,
                      child: Text(book.volumeInfo.authors![0],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle14)),
                ),
                SizedBox(
                  height: 8.h.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kMontserrat,
                      ),
                    ),
                    SizedBox(
                      width: 70.w,
                    ),
                    BookRating(
                      averageRating: book.volumeInfo.averageRating ?? 8,
                      countRating: book.volumeInfo.ratingCount ?? 101,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
