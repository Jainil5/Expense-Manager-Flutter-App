import 'package:fap7/pages/home_page.dart';
import 'package:fap7/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Daily"),
        ),
        endDrawer: const MyDrawer(),
        body:SingleChildScrollView(
            child: Stack(
            children: <Widget>[
                Center(
                  child: Column(
                    children: [
                      const Center(child: Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),)),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Card(
                          color: Colors.lightBlueAccent,
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text("About Expense Manager",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: CupertinoColors.white),),
                                  Text(""),
                                  Card(
                                    color: Colors.lightBlue,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text("Expense Manager is an productivity app that tracks your daily expenses. "
                                          "As we know it is important in our daily routine to keep track of our expenses . "
                                          "So this app bring easy management of expense for your routine",
                                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Card(
                          color: Colors.lightBlueAccent,
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("Profiles",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: CupertinoColors.white),),
                                  const Text(""),
                                  Card(
                                    color: Colors.lightBlue,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          FloatingActionButton.extended(
                                              onPressed: (){
                                                Fluttertoast.showToast(
                                                  msg: 'Coming soon',
                                                  toastLength: Toast.LENGTH_SHORT,
                                                  gravity: ToastGravity.BOTTOM,
                                                  backgroundColor: Colors.grey,
                                                  textColor: Colors.black,
                                                  timeInSecForIosWeb: 1,
                                                );
                                              },
                                            label: const Text("Visit Youtube"),
                                            icon: const Icon(Icons.subscriptions_sharp),
                                          ),
                                          const Text(" "),
                                          FloatingActionButton.extended(
                                            onPressed: (){
                                              Fluttertoast.showToast(
                                                msg: 'Coming soon',
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.BOTTOM,
                                                backgroundColor: Colors.grey,
                                                textColor: Colors.black,
                                                timeInSecForIosWeb: 1,
                                              );
                                            },
                                            label: const Text("Visit Instagram"),
                                            icon: const Icon(Icons.camera_alt_outlined),
                                          ),
                                          const Text(" "),
                                          FloatingActionButton.extended(
                                            onPressed: (){
                                              Fluttertoast.showToast(
                                                msg: 'Coming soon',
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.BOTTOM,
                                                backgroundColor: Colors.grey,
                                                textColor: Colors.black,
                                                timeInSecForIosWeb: 1,
                                              );
                                            },
                                            label: const Text("Mail Us"),
                                            icon: const Icon(Icons.mail),
                                          )
                                        ],
                                      )

                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(16),
                          child: Card(
                            color: Colors.lightBlueAccent,
                            child: SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text("Developer",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: CupertinoColors.white),),
                                    const Text(""),
                                    Card(
                                      color: Colors.lightBlue,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: const [
                                            Text("Jainil Patel",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                            Text(""),
                                            Text("Contact:",style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text("Mobile: 1234567890"),
                                            Text("Mail: xyz@gmail.com"),


                                          ],
                                        ),                                      ),
                                    ),
                                ],
                            ),
                             ),
                            ),
                            ),
                          ),
                  ],
            ),
          ),
    ],
      ),
    ),
        backgroundColor: CupertinoColors.activeBlue,

      ),
    );
  }
}
