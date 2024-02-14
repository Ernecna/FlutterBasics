import 'package:flutter/material.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("STLESS PAGE"),
        ),
        body: Center(
          child: Column(
            children: [Text("Hello World")],
          ),
        ));
  }
}
