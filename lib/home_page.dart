import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_7/chat_room.dart';
import 'package:flutter_alterra_batch_7/chat_room_item_widget.dart';
import 'package:flutter_alterra_batch_7/layout_page.dart';
import 'package:flutter_alterra_batch_7/menu_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final chatList = [
    ChatRoom(
      avatar: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt12dbddde5342ce4c/648866ff21a8556da61fa167/GOAL_-_Blank_WEB_-_Facebook_-_2023-06-13T135350.847.png',
      name: 'Lionel Messi', 
      lastMessage: 'Holaaaa', 
      time: '02:00 PM',
    ),
    ChatRoom(
      avatar: 'https://assets.manutd.com/AssetPicker/images/0/0/10/126/687707/Legends-Profile_Cristiano-Ronaldo1523460877263.jpg',
      name: 'Cristiano Ronaldo', 
      lastMessage: 'Hi, I\'m Ronaldo', 
      time: '03:00 PM',
    ),
    ChatRoom(
      avatar: null,
      name: 'No Name', 
      lastMessage: 'Good Morning', 
      time: '08:00 AM',
    ),
    ChatRoom(
      avatar: null,
      name: 'Anonymous', 
      lastMessage: 'Good Morning', 
      time: '08:00 AM',
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff54759e),
        title: const Text('Telegram'),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.search)
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: chatList.length,
        separatorBuilder: (context, index) => const Divider(
          height: 0,
        ),
        itemBuilder: (context, index) => ChatRoomItemWidget(
          chatRoom: chatList[index],
        ),
      ),
      drawer: const MenuDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LayoutPage()));
        },
        tooltip: 'Increment',
        backgroundColor: const Color(0xff54759e),
        child: const Icon(Icons.edit),
      ),
    );
  }
}