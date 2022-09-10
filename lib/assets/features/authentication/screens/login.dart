import 'package:flutter/material.dart';
import 'package:medic/assets/global_variables.dart';

class Login extends StatefulWidget {
  static const String routeName = '/authentication-screen';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalVariables.appbacrcolor,
          title: Center(
            child: const Text('MEDISHARE'),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  child: Image.asset('lib/assets/images/logo.png'),
                  height: 130.0,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    //  controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      labelStyle: TextStyle(
                        fontSize: 13.0,
                        // fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    //   controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 13.0,
                        // fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal, // background
                    onPrimary: Colors.yellow, // foreground
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xffebecee),
                      fontFamily: 'Source Sans Pro',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onPressed: () {
                    //   print(nameController.text);
                    //  print(passwordController.text);
                  },
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    'Forgot Password ?',
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 15.0,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  const Text(
                    'Do not have an account?',
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 14.0,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 14.0,
                          letterSpacing: 1.0,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w800),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        )));
  }
}
