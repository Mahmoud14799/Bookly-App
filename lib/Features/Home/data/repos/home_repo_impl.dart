import 'package:dartz/dartz.dart';
import 'package:pro_book/core/Error/failures.dart';
import 'package:pro_book/features/Home/data/models/book_model/book_model.dart';
import 'package:pro_book/features/Home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
