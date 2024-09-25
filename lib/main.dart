import 'package:flutter/material.dart';
import 'package:vinemas_app/screens/listfim/movie_list_view.dart';
import 'package:vinemas_app/screens/login/login_screen.dart';
import 'package:vinemas_app/screens/not_found_page.dart';
import 'package:vinemas_app/theme/my_theme.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.darkTheme(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const LoginScreen());
          case 'home':
            return MaterialPageRoute(builder: (_) => const HomeScreen());
          default:
            return MaterialPageRoute(builder: (_) => const NotFoundPage());
        }
      },
      initialRoute: 'home',
    );
  }
}
