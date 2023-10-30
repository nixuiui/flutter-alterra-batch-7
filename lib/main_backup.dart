import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_7/home_page.dart';
import 'package:flutter_alterra_batch_7/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const MyHomePage(title: 'Flutter Home'),
        'profile': (context) => const ProfilePage(),
      },
    );
  }
}
