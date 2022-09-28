import 'package:flutter/material.dart';
import 'package:medic/assets/common/widgets/bottom_bar.dart';
import 'package:medic/assets/features/authentication/screens/login.dart';
import 'package:medic/assets/features/authentication/screens/vender_auth.dart';
import 'package:medic/assets/features/authentication/screens/customer_auth.dart';
import 'package:medic/assets/features/authentication/screens/login.dart';
import 'package:medic/assets/features/home/screens/home_screen.dart';

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
    case LoginScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginScreen(),
      );
  case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
        case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
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
