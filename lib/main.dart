import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_7/about_page.dart';
import 'package:flutter_alterra_batch_7/home_page.dart';
import 'package:flutter_alterra_batch_7/layout_page.dart';
import 'package:flutter_alterra_batch_7/member_page.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff54759e)),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const MyHomePage(title: 'Flutter Home'),
        'profile': (context) => const ProfilePage(),
        'layout': (context) => const LayoutPage(),
        'about': (context) => const AboutPage(),
        'member': (context) => const MemberPage(),
      },
    );
  }
}
