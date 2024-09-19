import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_book/features/Home/data/models/book_model/book_model.dart';
import 'package:pro_book/features/Home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:pro_book/features/Home/presentation/views/widget/details_view_body/book_details_view_body.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(
        bookModel: widget.bookModel,
      ),
    );
  }
}
