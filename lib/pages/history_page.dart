import 'package:fap7/widgets/drawer.dart';
import 'package:fap7/pages/home_page.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  var listAmount;
  var listReason;

  HistoryPage(  {Key? key,  required this.listAmount, required this.listReason}) : super(key: key);
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
        body: Center(
          child:ListView.builder(
            itemCount: listAmount.length,
            itemBuilder: (context, position) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(listAmount[position]),
                      Text(listReason[position]),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );;
  }
}
