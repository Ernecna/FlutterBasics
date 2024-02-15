import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  Future<int> factocalc(int number) async {
    int res = 1;
    for (var i = 1; i <= number; i++) {
      res = res * i;
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Future Builder"),
      ),
      body: Center(
        child: Column(
          children: [
            FutureBuilder<int>(
              future: factocalc(5),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print("get error");
                }
                if (snapshot.hasData) {
                  return Text("res= ${snapshot.data}");
                } else {
                  return Text("res= ${snapshot.data}");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
