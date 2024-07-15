import 'package:go_router/go_router.dart';
import 'package:pro_book/features/Home/presentation/views/home_view.dart';
import 'package:pro_book/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String kHomeView = '/home_view';

  static final router = GoRouter(routes: [
    GoRoute(
      path: initialRoute,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    )
  ]);
}
