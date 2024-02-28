import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageA extends StatefulWidget {
  const PageA({super.key});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  Future<void> dataRead() async {
    var sp = await SharedPreferences.getInstance();
    String name = sp.getString("name") ?? "isim yok";
    int? id = sp.getInt("age") ?? null;
    print("AD : $name AGE: $id");
  }

  @override
  void initState() {
    super.initState();
    dataRead();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("PageA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
