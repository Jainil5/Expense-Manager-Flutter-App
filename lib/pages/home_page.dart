import 'package:fap7/pages/history_page.dart';
import 'package:fap7/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController amountController = TextEditingController();
  TextEditingController reasonController = TextEditingController();

  var listAmount = [];
  var listReason = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Expense Manager"),
                IconButton(
                    icon: const Icon(Icons.home_filled),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ],
            ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextField(
                    decoration: const InputDecoration(
                      hintText: "Enter amount:",
                      hintStyle: TextStyle(
                        color: Colors.blue,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], // Only numbers can be entered

                ),
                TextField(
                  controller: reasonController,
                  decoration:  const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter reason:",
                    hintStyle: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                FloatingActionButton.extended(
                  onPressed: () {

                    setState(() {
                      if (amountController.text.toString()=="" || reasonController.text.toString()==""){
                        Fluttertoast.showToast(
                          msg: 'None of the fields can be empty.',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          timeInSecForIosWeb: 1,
                        );
                      }
                      else{
                        listAmount.add(amountController.text.toString());
                        listReason.add(reasonController.text.toString());
                        amountController.clear();
                        reasonController.clear();
                      }
                    });
                  },
                  label:const Text("Add"),
                  backgroundColor: Colors.green,
                  icon: const Icon(Icons.add),
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HistoryPage()));
                  },
                  backgroundColor: Colors.red,
                  label: const Text("View expenses"),
                  icon: const Icon(Icons.history),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onHomePressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}

