import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class TutorialDrawer extends StatelessWidget {
  final VoidCallback onBackButtonPressed;

  const TutorialDrawer({
    Key? key,
    required this.onBackButtonPressed,
  }) : super(key: key);

  Future<List<DrawerItem>> loadDrawerData() async {
    final jsonString = await rootBundle.loadString('assets/json/drawer.json');
    final jsonData = json.decode(jsonString);

    List<DrawerItem> drawerItems = [];
    for (var item in jsonData) {
      drawerItems.add(DrawerItem(
        id: item['id'],
        title: item['title'],
        icon: item['icon'], 
      ));
    }

    return drawerItems;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[200],
        child: FutureBuilder<List<DrawerItem>>(
          future: loadDrawerData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final drawerItems = snapshot.data!;
              return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: drawerItems.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Welcome, User',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    final item = drawerItems[index - 1];
                    return ListTile(
                     // leading: Icon(Icons.home),
                     leading: Icon(_getIconData(item.icon)),
                      title: Text(
                        item.title,
                        style: TextStyle(fontSize: 16),
                      ),
                      onTap: () {
                        // Handle navigation based on the selected item
                      },
                    );
                  }
                },
              );
            } else if (snapshot.hasError) {
              return const Text('Error loading drawer data');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

class DrawerItem {
  final int id;
  final String title;
  final String icon;

  DrawerItem({
    required this.id,
    required this.title,
    required this.icon,});
}

IconData _getIconData(String iconName) {
  switch (iconName) {
    case 'home':
      return Icons.home;
    case 'category':
      return Icons.category;
    case 'bookmark':
      return Icons.bookmark;
    case 'settings':
      return Icons.settings;
    case 'info':
      return Icons.info;
    case 'logout':
      return Icons.logout;
    default:
      return Icons.help;
  }
}
