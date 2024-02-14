// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_doc/Person.dart';

import 'package:flutter_doc/main.dart';

class StfulPage extends StatefulWidget {
  Person person;
  StfulPage({required this.person});

  @override
  State<StfulPage> createState() => _StfulPageState();
}

class _StfulPageState extends State<StfulPage> {
  Future<bool> back(BuildContext context) async {
    print(" back clilcked phone");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Stful Page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
            print("CLİCKED BACK");
          },
        ),
      ),
      body: WillPopScope(
        onWillPop: () => back(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("aaaa"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("BACK")),
              Text("name ${widget.person.name}"),
              Text("age ${widget.person.age}) "),
              Text("length ${widget.person.length}")
            ],
          ),
        ),
      ),
    );
  }
}
