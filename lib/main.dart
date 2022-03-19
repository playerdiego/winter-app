import 'package:flutter/material.dart';
import 'package:winter_app/router/app_router.dart';
import 'package:winter_app/screens/screens.dart';
import 'package:winter_app/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Winter',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.getRoutes(),
      theme: AppTheme.theme,
    );
  }
}
