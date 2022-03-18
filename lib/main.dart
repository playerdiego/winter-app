import 'package:flutter/material.dart';
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
      initialRoute: 'login',
      routes: {
        'home': (_) => const HomeScreen(),

        'login': (_) => const LoginScreen(),
        'register': (_) => const RegisterScreen(),
        'reset_password': (_) => const ResetPasswordScreen(),

        'profile': (_) => const ProfileScreen(),
        'news': (_) => const NewsScreen(),
        'new_detail': (_) => const NewDetailScreen(),
        'chat': (_) => const ChatScreen(),
        'notifications': (_) => const NotificationsScreen() 
      },
      theme: AppTheme.theme,
    );
  }
}
