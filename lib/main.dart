import 'package:flutter/material.dart';
import 'package:meet_up/app_home.dart';
import 'package:meet_up/screens/description_screen.dart';
import 'package:meet_up/screens/login_screen.dart';
import 'package:meet_up/screens/meetup_screen.dart';
import 'package:meet_up/services/auth_service.dart';

void main() {
  Authorization().authenticate("test45@yopmail.com","Test@123");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
