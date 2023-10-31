import 'package:flutter/material.dart';
import 'package:flutter_alterra_batch_7/consts/app_const.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Opacity(
                opacity: 0.8,
                child: Image.network('https://i.pinimg.com/550x/3c/2c/79/3c2c79245f1eb574a2348fd31da0c0f3.jpg')
              ),
              Positioned(
                bottom: 16,
                left: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppConsts.menuProfile);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'https://assets.ayobandung.com/crop/1x7:719x541/750x500/webp/photo/2023/03/18/FB_IMG_1679143728783-579037915.jpg',
                          width: 52,
                          height: 52,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Niki Rahmadi',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      '085712312322',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const ListTile(
            leading: Icon(Icons.group),
            title: Text('New Group'),
          ),
          const ListTile(
            leading: Icon(Icons.lock),
            title: Text('New Secret Chat'),
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('New Channel'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contacts'),
          ),
          const ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Invite Friends'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          const ListTile(
            leading: Icon(Icons.help),
            title: Text('Telegram FAQ'),
          ),
        ],
      ),
    );
  }
}