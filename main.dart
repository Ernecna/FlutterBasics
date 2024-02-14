import 'package:flutter/material.dart';
import 'package:flutter_doc/ExamplePage.dart';
import 'package:flutter_doc/Person.dart';
import 'package:flutter_doc/StfulPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // ARKAPLANDAKİ İSMİ VS
      debugShowCheckedModeBanner: false, // DEBUG BANNER KAPAMA
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("HOMEPAGE"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExamplePage()));
                  },
                  child: Text("Back")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StfulPage(
                                  person: Person(
                                      name: "Erencan",
                                      age: 18,
                                      length: 1811,
                                      married: true),
                                )));
                  },
                  child: Text("Next PageB")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text("Homepage"))
            ],
          ),
        ));
  }
}
