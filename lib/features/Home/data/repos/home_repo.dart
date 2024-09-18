import 'package:dartz/dartz.dart';
import 'package:pro_book/core/Error/failures.dart';
import 'package:pro_book/features/Home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
}
