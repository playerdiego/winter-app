import 'package:flutter/cupertino.dart';

import '../screens/screens.dart';

class AppRouter {

  static const String initialRoute = 'profile';

  static final List<_Route> routes = [
    _Route(path: 'home', screen: const HomeScreen()),

    _Route(path: 'login', screen: const LoginScreen()),
    _Route(path: 'register', screen: const RegisterScreen()),
    _Route(path: 'reset_password', screen: const ResetPasswordScreen()),

    _Route(path: 'profile', screen: const ProfileScreen()),
    _Route(path: 'news', screen: const NewsScreen()),
    _Route(path: 'new_detail', screen: const NewDetailScreen()),
    _Route(path: 'chat', screen: const ChatScreen()),
    _Route(path: 'notifications', screen: const NotificationsScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {

    Map<String, Widget Function(BuildContext)> tempRoutes = {};

    // ignore: avoid_function_literals_in_foreach_calls
    routes.forEach((e) => tempRoutes[e.path] = (_) => e.screen);

    return tempRoutes;

  }

}

class _Route {

  _Route({
    required this.path,
    required this.screen
  });

  final String path;
  final Widget screen;

}