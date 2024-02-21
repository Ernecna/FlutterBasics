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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tfcontroller = TextEditingController();
  String temp = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("USERİNTERACT"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blue,
                          title: Text("Özel Alert"),
                          content: TextField(
                            controller: tfcontroller,
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("İptal")),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    temp = tfcontroller.text;
                                    print("Veri alındı");
                                  });
                                },
                                child: Text("Tamam"))
                          ],
                        );
                      });
                },
                child: Text("Basic Alert")),
            PopupMenuButton(
              child: Icon(Icons.open_in_new),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: Text("Delete"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Update"),
                  value: 2,
                ),
              ],
              onCanceled: () {
                print("Seçim yapılmadi");
              },
              onSelected: (menuItemValue) {
                if (menuItemValue == 1) {
                  print("Del seçildi");
                }
                if (menuItemValue == 2) {
                  print("Güncelle seçildi");
                }
              },
            )
          ],
        ));
  }
}
