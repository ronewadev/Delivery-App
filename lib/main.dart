import 'package:delivery_app/pages/forgotPassword.dart';
import 'package:delivery_app/pages/loginScreen.dart';
import 'package:delivery_app/pages/mainScreen.dart';
import 'package:delivery_app/pages/registrationScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
       // useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.idScreen,
      //setting up routes
      routes: {
        RegistrationScreen.idScreen:(context) => RegistrationScreen(),
        LoginScreen.idScreen:(context) => LoginScreen(),
        MainScreen.idScreen:(context) => MainScreen(),
        ForgotPasswordScreen.idScreen:(context) => ForgotPasswordScreen(),
      }
    );
  }
}