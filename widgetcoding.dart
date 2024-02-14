import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("WidgetCoding"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              check ? "Merhabatrue" : "Merhabafalse",
              style: TextStyle(
                color: check ? Colors.red : Colors.blue,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    check = true;
                  });
                },
                child: Text("Button1")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    check = false;
                  });
                },
                child: Text("Button2"))
          ],
        ),
      ),
    );
  }
}
