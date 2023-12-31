import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_7/models/chat_room_model.dart';

class ChatRoomItemWidget extends StatelessWidget {

  final ChatRoom chatRoom;
  final Function()? onPressed;

  const ChatRoomItemWidget({
    super.key,
    required this.chatRoom,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPressed?.call,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            if(chatRoom.avatar != null) ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                chatRoom.avatar ?? '',
                width: 52,
                height: 52,
                fit: BoxFit.cover,
              ),
            ) else ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                color: Colors.yellow,
                width: 60,
                height: 60,
                child: Center(
                  child: Text(
                    chatRoom.name[0], 
                    style: const TextStyle(fontSize: 24)
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chatRoom.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    chatRoom.lastMessage,
                  ),
                ],
              ),
            ),
            Text(
              chatRoom.time,
              style: const TextStyle(
                color: Colors.grey
              ),
            ),
          ],
        ),
      ),
    );
  }
}