import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_book/core/utils/service_locator.dart';
import 'package:pro_book/features/Home/data/models/book_model/book_model.dart';
import 'package:pro_book/features/Home/data/repos/home_repo_impl.dart';
import 'package:pro_book/features/Home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:pro_book/features/Home/presentation/views/details_view.dart';
import 'package:pro_book/features/Home/presentation/views/home_view.dart';
import 'package:pro_book/features/search/presentation/views/search_view.dart';
import 'package:pro_book/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String kHomeView = '/home_view';
  static const String kDetailsView = "/details_view";
  static const String kSearchView = "/search_view";

  static final router = GoRouter(routes: [
    GoRoute(
      path: initialRoute,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child: DetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
  ]);
}
