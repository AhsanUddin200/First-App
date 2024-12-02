import 'package:flutter/material.dart';
import 'screens/signup_screen.dart'; // Signup Screen ko import karna

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/signup', // App initial screen signup screen par set karenge
      routes: {
        '/signup': (context) => SignupScreen(), // Signup screen route
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('School App'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/logo.png', height: 40), // Custom logo
            ),
          ],
        ),
        body: Center(
          child: Text('Welcome to the School App'),
        ),
      ),
    );
  }
}
