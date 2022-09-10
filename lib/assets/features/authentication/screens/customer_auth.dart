import 'package:flutter/material.dart';
import 'package:medic/assets/global_variables.dart';

class CustomerAuthenticationScreen extends StatefulWidget {
  static const String routeName = '/authentication-screen';
  const CustomerAuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<CustomerAuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<CustomerAuthenticationScreen> {
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
        child: Column(
          children: [
            Center(
              child: Container(
                child: Image.asset('images/logo.png'),
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
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: TextField(
              //  controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: TextField(
                obscureText: true,
                //controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contact Number',
                  
                ),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
