import 'package:flutter/material.dart';
import 'profile_details_page.dart';
import 'home_page.dart';
import 'profile_card.dart';
//import 'profile_card.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute:'/',
        routes: {
          '/':(context)=>HomeScreen(),
          

        },
      debugShowCheckedModeBanner: false,
    );
  }
}