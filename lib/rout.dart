import 'package:flutter/material.dart';
import 'package:medic/assets/features/authentication/screens/login.dart';
import 'package:medic/assets/features/authentication/screens/vender_auth.dart';
import 'package:medic/assets/features/authentication/screens/customer_auth.dart';
import 'package:medic/assets/features/authentication/screens/login.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case VenderAuthenticationScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const VenderAuthenticationScreen(),
      );
    case CustomerAuthenticationScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CustomerAuthenticationScreen(),
      );
    case Login.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Login(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Error 404 Page not found'),
          ),
        ),
      );
  }
}
