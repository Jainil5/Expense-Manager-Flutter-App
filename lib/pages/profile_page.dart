import 'package:fap7/pages/home_page.dart';
import 'package:fap7/pages/login.dart';
import 'package:fap7/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Expense Manager"),
                IconButton(
                  icon: const Icon(Icons.home_filled),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                ),
              ],
            ),
          ),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                      },
                      backgroundColor: Colors.red,
                      label: const Text("Login"),
                      icon: const Icon(Icons.login),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Subscriptions coming soon.',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          timeInSecForIosWeb: 1,
                        );
                      },
                      backgroundColor: Colors.red,
                      label: const Text("Subscribe"),
                      icon: const Icon(Icons.subscriptions),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Unsubscriptions coming soon',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          timeInSecForIosWeb: 1,
                        );
                      },
                      backgroundColor: Colors.red,
                      label: const Text("UnSubscribe"),
                      icon: const Icon(Icons.unsubscribe),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Data cleared.',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          timeInSecForIosWeb: 1,
                        );
                      },
                      backgroundColor: Colors.red,
                      label: const Text("Clear data"),
                      icon: const Icon(Icons.clear),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Logged out successfully.',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          timeInSecForIosWeb: 1,
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                      },
                      backgroundColor: Colors.red,
                      label: const Text("Logout"),
                      icon: const Icon(Icons.logout),
                    ),

                  ],
                ),
          ),
        ),
        ),
        );
  }
}
