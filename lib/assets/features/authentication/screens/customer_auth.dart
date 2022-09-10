import 'package:flutter/material.dart';
import 'package:medic/assets/global_variables.dart';

class CustomerAuthenticationScreen extends StatefulWidget {
  static const String routeName = '/authentication-screen';
  const CustomerAuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<CustomerAuthenticationScreen> createState() =>
      _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<CustomerAuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalVariables.appbacrcolor,
        title: Center(
          child: const Text('MEDICSHARE'),
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
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Customer Sign Up',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
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
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    //controller: passwordController,
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
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full Name',
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
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Address',
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
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                      height: 40,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contact Number',
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
                    'Register',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xffebecee),
                      fontFamily: 'Source Sans Pro',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onPressed: () {
                    //  print(nameController.text);
                    //   print(passwordController.text);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
