import 'package:flutter_http_2/view/pages/user_detail.dart';
import 'package:flutter_http_2/view/pages/user_page.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String table = 'table';
  static const String detail = 'detail';

  static final GoRouter goRouter = GoRouter(
    initialLocation: '/table',
    routes: [
      GoRoute(
        name: Routes.table,
        path: '/table',
        builder: (context, state) => UserPage(),
      ),
      GoRoute(
        name: Routes.detail,
        path: '/detail',
        builder: (context, state) => UserDetail(),
      ),
    ],
  );
}
