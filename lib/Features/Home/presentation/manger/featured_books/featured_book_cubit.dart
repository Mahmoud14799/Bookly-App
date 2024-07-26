import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pro_book/core/Error/failures.dart';
import 'package:pro_book/features/Home/data/models/book_model/book_model.dart';
import 'package:pro_book/features/Home/data/repos/home_repo.dart';

part 'featured_book_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksFailure(failure.errorMassage)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
