import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        buildProfileIcon('Emenalo', Colors.blue),
                        buildProfileIcon('Onyeka', Colors.red),
                        buildProfileIcon('Thelma', Colors.yellow),
                        buildProfileIcon('Kids', Colors.green, isKids: true),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_box,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Manage Profiles',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  color: Colors.grey[900],
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tell friends about Netflix.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Sit quam dui, vivamus bibendum ut. A morbi in tortor ut felis '
                        'non accumsan accumsan quis. Massa.',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black, backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            ),
                            child: Text('Copy Link'),
                          ),
                          Row(
                            children: [
                              
                              buildShareIcon(Icons.facebook, Colors.blue),
                              buildShareIcon(Icons.mail, Colors.red),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_horiz,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.white),
                  title: Text(
                    'My List',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                ),
                Divider(color: Colors.grey[700]),
                ListTile(
                  title: Text(
                    'App Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'Account',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'Help',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'Sign Out',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileIcon(String name, Color color, {bool isKids = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: isKids
                  ? Text(
                      'kids',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Icon(Icons.person, color: Colors.white),
            ),
          ),
          SizedBox(height: 4),
          Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget buildShareIcon(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}

