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
      debugShowCheckedModeBanner: false,
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
  var toggleDurumlar = [false, true, false];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleButtons(
                  children: [
                    Icon(Icons.looks_one),
                    Icon(Icons.looks_3),
                    Icon(Icons.looks_two)
                  ],
                  isSelected: toggleDurumlar,
                  onPressed: (int index) {
                    selectedindex = index;
                    print("${selectedindex + 1}. toggle seçildi ");
                    setState(() {
                      toggleDurumlar[selectedindex] =
                          !toggleDurumlar[selectedindex];
                    });
                  })
            ],
          ),
        ));
  }
}
