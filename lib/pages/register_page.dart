import 'package:farmco/components/mytextfiled.dart';
import 'package:farmco/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:farmco/pages/homepage.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _register(BuildContext context) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
      // Navigate to homepage after successful registration
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to register: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Mytextfiled(
                  controller: emailController,
                  obsuretext: false,
                  hinttext: "Enter your email",
                ),
                const SizedBox(height: 10),
                Mytextfiled(
                  controller: passController,
                  obsuretext: true,
                  hinttext: "Enter your password",
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () => _register(context),
                  child: const Text('Register'),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>const LoginPage()),
                    );
                  },
                  child: const Text("Already have an account? Login Now!"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
