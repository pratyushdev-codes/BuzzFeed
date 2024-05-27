import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30, color: Colors.white60),
                  ),
                  accountEmail: Text('Breaking news, tailored just for you !', // Add your subheading text here
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('images/navbarimg.jpeg'),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                  onTap: () => null,
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.description),
                  title: Text('Policies'),
                  onTap: () => null,
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.contact_phone), // Added contact icon
                  title: Text('Contact'),
                  onTap: () => null,
                ),
                Divider(), // Added divider for contact
                ListTile(
                  title: Text('Exit'),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () => null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
