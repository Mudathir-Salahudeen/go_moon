import 'package:flutter/material.dart';
import 'package:go_moon/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GoMoon',
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(100, 31, 31, 1)),
        home: HomePage());
  }
}
