import 'package:auto_route/auto_route.dart';
import 'package:auto_routes/home_page.dart';
import 'package:auto_routes/home_page.dart';
import 'package:auto_routes/posts/posts_page.dart';
import 'package:auto_routes/posts/single_post_page.dart';
import 'package:auto_routes/settings/settings_page.dart';
import 'package:auto_routes/users/user_profile_page.dart';
import 'package:auto_routes/users/users_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: HomePage, children: [
      AutoRoute(
        path: 'posts',
        name: 'PostsRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: PostsPage,
          ),
          AutoRoute(
            path: ':postId',
            page: SinglePostPage,
          )
        ],
      ),
      AutoRoute(
        path: 'users',
        name: 'UsersRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: UsersPage,
          ),
          AutoRoute(
            path: ':userId',
            page: UserProfilePage,
          ),
        ],
      ),
      AutoRoute(
        path: 'settings',
        name: 'SettingsRouter',
        page: SettingsPage,
      )
    ]),
  ],
)
class $AppRouter {}
