import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_book/core/widget/custom_error_widget.dart';
import 'package:pro_book/core/widget/custom_loading_indicator.dart';
import 'package:pro_book/features/Home/presentation/manger/newest_%20books_cubit/newest_books_cubit.dart';
import 'package:pro_book/features/Home/presentation/views/widget/best_seller_list/newset_books_item.dart';

class NewsetBooksList extends StatelessWidget {
  const NewsetBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 30),
                  child: BookListViewItem(
                    book: state.books[index],
                  ),
                );
              });
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMassage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
