import 'package:flutter/material.dart';
import 'package:vendease/router/routes.dart';
import 'package:vendease/ui/app/cart.ui.dart';
import 'package:vendease/ui/app/main.ui.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const MainUi());
      case cartRoute:
        return MaterialPageRoute(builder: (_) => const CartUi());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
