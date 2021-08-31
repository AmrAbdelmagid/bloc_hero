import 'package:bloc_hero/presentation/screens/home_screen.dart';
import 'package:bloc_hero/presentation/screens/second_screen.dart';
import 'package:bloc_hero/presentation/screens/third_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(title: 'Home Page', color: Colors.black),
        );

      case '/second':
        return MaterialPageRoute(
          builder: (_) => SecondScreen(title: 'Second Page', color: Colors.red),
        );

      case '/third':
        return MaterialPageRoute(
          builder: (_) => ThirdScreen(title: 'Third Page', color: Colors.green),
        );
    }
  }
}
