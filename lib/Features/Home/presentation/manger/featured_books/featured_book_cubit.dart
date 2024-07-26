import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pro_book/core/Error/failures.dart';
import 'package:pro_book/features/Home/data/models/book_model/book_model.dart';

part 'featured_book_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());

  void getFeaturedBooks() {}
}
