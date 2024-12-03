import 'package:farmco/onboarding/ui/onboarding_screen.dart';
import 'package:farmco/pages/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const  CircularProgressIndicator(); // Handle if still waiting for auth data
        } else if (snapshot.hasData && snapshot.data != null) {
          return Homepage(); // User is authenticated, show homepage
        } else {
          return const  OnboardingScreen(); // No user authenticated, show onboarding
        }
      },
    );
  }
}