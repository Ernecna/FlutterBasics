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
  var formKey = GlobalKey<FormState>();
  var tfUsername = TextEditingController();
  var tfpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: tfUsername,
                    decoration: InputDecoration(hintText: "Username"),
                    validator: (tfinput) {
                      if (tfinput!.isEmpty) {
                        return "Username is free";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: tfpassword,
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Password"),
                    validator: (tfinputpas) {
                      if (tfinputpas!.isEmpty) {
                        return "Password is free";
                      }
                      if (tfinputpas.length < 6) {
                        return "at least 6 characters";
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        bool check = formKey.currentState!.validate();
                        if (check == true) {
                          print("OKEY");
                          String username = tfUsername.text;
                          String password = tfpassword.text;
                          print("username $username password $password");
                        } else {
                          print("NOT OKEY");
                        }
                      },
                      child: Text("Enter"))
                ],
              ),
            ),
          ],
        ));
  }
}
