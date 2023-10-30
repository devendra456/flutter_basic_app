import 'package:go_router/go_router.dart';

import '../../features/home/presentation/home_screen.dart';
import 'app_route_names.dart';

class AppRouteSetting {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: AppRouteNames.home,
        builder: (context, state) {
          return const HomeScreen();
        },
      )
    ],
  );
}
