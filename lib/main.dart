import 'package:flutter/material.dart';
import 'package:medic/assets/features/authentication/screens/vender_auth.dart';
import 'package:medic/assets/features/authentication/screens/customer_auth.dart';
import 'package:medic/assets/features/authentication/screens/login.dart';
import 'package:medic/assets/global_variables.dart';
import 'package:medic/rout.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medishare', 
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.appbacrcolor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
     // home:CustomerAuthenticationScreen(), 
   //home:VenderAuthenticationScreen(),
   home: Login(),
   );
  }
}
