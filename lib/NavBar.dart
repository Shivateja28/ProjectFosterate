import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Jessie'),
            accountEmail: Text('jessie@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 130,
                  height: 130,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  children: [
                    CircleAvatar(
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.XSZAFm-5JI7nriDLwZqRQQHaE7?w=279&h=185&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                        backgroundColor: Colors.red.shade800,
                        radius: 45,
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.XSZAFm-5JI7nriDLwZqRQQHaE7?w=279&h=185&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                        backgroundColor: Colors.red.shade800,
                        radius: 45,
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.XSZAFm-5JI7nriDLwZqRQQHaE7?w=279&h=185&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                        backgroundColor: Colors.red.shade800,
                        radius: 45,
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.XSZAFm-5JI7nriDLwZqRQQHaE7?w=279&h=185&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                        backgroundColor: Colors.red.shade800,
                        radius: 45,
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.add,size: 60,),
                  ]
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],

    );
  }
}