import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_book/core/widget/custom_error_widget.dart';
import 'package:pro_book/core/widget/custom_loading_indicator.dart';
import 'package:pro_book/features/Home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:pro_book/features/Home/presentation/views/widget/features_list/custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: CustomBookImage(
                    bookModel: state.books[index],
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMassage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
