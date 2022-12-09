import 'package:fap7/pages/about_page.dart';
import 'package:fap7/pages/history_page.dart';
import 'package:fap7/pages/home_page.dart';
import 'package:fap7/pages/login.dart';
import 'package:fap7/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              shape: BoxShape.rectangle,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('Welcome to Expense Manager',
              style: TextStyle(fontSize: 28,),
                selectionColor: Colors.amber,
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          ListTile(
            title: const Text('My Profile'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
          ),
          ListTile(
            title: const Text('About Us'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUsPage()));
            },
          ),
          ListTile(
            title: const Text('Sign Out'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
