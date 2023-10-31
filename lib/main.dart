import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_7/consts/app_const.dart';
import 'package:flutter_alterra_batch_7/pages/about_page.dart';
import 'package:flutter_alterra_batch_7/pages/home_page.dart';
import 'package:flutter_alterra_batch_7/pages/layout_page.dart';
import 'package:flutter_alterra_batch_7/pages/member_page.dart';
import 'package:flutter_alterra_batch_7/pages/profile_page.dart';

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
      initialRoute: AppConsts.menuHome,
      routes: {
        AppConsts.menuHome: (context) => const MyHomePage(title: 'Flutter Home'),
        AppConsts.menuProfile: (context) => const ProfilePage(),
        AppConsts.menuLayout: (context) => const LayoutPage(),
        AppConsts.menuAbout: (context) => const AboutPage(),
        AppConsts.menuMember: (context) => const MemberPage(),
      },
    );
  }
}
