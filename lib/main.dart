import 'package:farmco/auth/app_wrapper.dart';
import 'package:farmco/firebase_options.dart';
import 'package:farmco/models/shop.dart';
import 'package:farmco/themes/themeprovider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Themeprovider()),
        ChangeNotifierProvider(create: (context) => Shop())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const AppWrapper(),
      theme: Provider.of<Themeprovider>(context).themeData,
    );
  }
}


