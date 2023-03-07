import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_berson/screens/view.dart';
import 'package:firebase_berson/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../presentaion/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  // const MyApp({super.key});
  const MyApp.internal();
  static final MyApp _instance = MyApp.internal();
  factory MyApp() => _instance;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: RouteGenerator.getRoute,
        // initialRoute: Routes.splashRoute,
        theme: getApplicationTheme(),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ViewData();
            } else {
              return SignUpPage();
            }
          },
        ));
  }
}
