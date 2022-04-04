import 'package:flutter/material.dart';
import 'package:go_finances/app/constantes/colors.dart';
import 'package:go_finances/app/views/register_page.dart';

import 'app/views/home_page.dart';
import 'app/views/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routes = <String, WidgetBuilder>{
    '/login': (BuildContext context) => const LoginPage(),
    '/home': (BuildContext context) => const HomePage(),
    '/register': (BuildContext context) => const RegisterPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: routes,
      title: 'Go Finances',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          backgroundColor: Colors.black.withOpacity(1),
          appBarTheme: const AppBarTheme(
            color: blue,
            shadowColor: Colors.transparent,
          )),
    );
  }
}
