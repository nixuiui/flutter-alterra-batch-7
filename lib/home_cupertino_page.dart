import 'package:flutter/cupertino.dart';

class HomeCupertinoPage extends StatefulWidget {
  const HomeCupertinoPage({super.key});

  @override
  State<HomeCupertinoPage> createState() => _HomeCupertinoPageState();
}

class _HomeCupertinoPageState extends State<HomeCupertinoPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: const Icon(CupertinoIcons.back),
        middle: const Text('Home Page'),
        trailing: CupertinoButton(
          onPressed: () {}, 
          child: const Icon(CupertinoIcons.add)
        ),
      ),
      child: const SafeArea(
        child: Text('aaaa')
      ),
    );
  }
}