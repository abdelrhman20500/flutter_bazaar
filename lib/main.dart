import 'package:flutter/material.dart';
import 'package:flutter_bazaar/Features/Auth_screens/presentation/view/Login/login_screen.dart';
import 'package:flutter_bazaar/Features/Auth_screens/presentation/view/Register/register_screen.dart';
import 'package:flutter_bazaar/Features/Splash_screen/presentation/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName:(_)=>const SplashScreen(),
        LoginScreen.routeName:(_)=> LoginScreen(),
        RegisterScreen.routeName:(_)=>RegisterScreen()
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
