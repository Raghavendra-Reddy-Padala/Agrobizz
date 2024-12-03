import 'package:farmco/components/mytextfiled.dart';
import 'package:farmco/pages/homepage.dart';
import 'package:farmco/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Method to handle user login
  void _login() async {
    try {
      // Sign in with email and password
      await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return  Homepage();
      }));
    } 
    catch (e) {
      // Display error message if login fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to sign in: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Lottie animation for the logo
              Lottie.network(
                "https://lottie.host/b12cccff-c3fa-4dbd-946e-487ab2e85d7a/6gBZI1vMjW.json",
                height: 280,
              ),
              const SizedBox(height: 20),
              // App name
              const Text(
                "A G R O B I Z Z",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              // Email text field
              Mytextfiled(
                controller: emailController,
                obsuretext: false,
                hinttext: "Enter your email",
              ),
              const SizedBox(height: 10),
              // Password text field
              Mytextfiled(
                controller: passController,
                obsuretext: true,
                hinttext: "Enter your password",
              ),
              const SizedBox(height: 30),
              // Sign in button
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: _login,
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Navigation to RegisterPage
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Not a member?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
                    },
                    child: const Text(
                      "Register now!",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
