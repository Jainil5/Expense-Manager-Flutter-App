import 'package:fap7/pages/home_page.dart';
import 'package:fap7/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            const Center(
              child: Text("My Profile",style: TextStyle(color: CupertinoColors.activeBlue,fontSize: 32,fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){},
                  autofocus: true,
                  child:  Row(
                    children:  const [
                      Icon(Icons.change_circle),
                      Text("Change name"),
                    ],
                  ),
                ),
              ],
            )
            
            
          ],
        ),
        ),
      );
  }
}
