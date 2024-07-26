import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'book_cubit_state.dart';

class BookCubitCubit extends Cubit<BookCubitState> {
  BookCubitCubit() : super(BookCubitInitial());
}
