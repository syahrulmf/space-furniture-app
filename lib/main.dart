import 'package:flutter/material.dart';
import 'package:space/pages/home_page.dart';
import 'package:space/pages/onboarding_page.dart';
import 'package:space/pages/signin_page.dart';
import 'package:space/pages/splash_page.dart';

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
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
