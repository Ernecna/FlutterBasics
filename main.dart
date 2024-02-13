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
  @override
  Widget build(BuildContext context) {
    var screeninfo = MediaQuery.of(context);
    final double screenheight = screeninfo.size.height;
    final double screenwidth = screeninfo.size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 179, 161, 211),
          title: Text(widget.title),
        ),
        backgroundColor: Color.fromARGB(255, 30, 5, 100),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.all(screenheight / 100),
                    child: SizedBox(
                      width: screenwidth / 4,
                      height: screenwidth / 4,
                      child: Image.asset("img/logo.png"),
                    )),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(
                    child: Text(
                      "ENTER",
                      style: TextStyle(fontSize: screenheight / 55),
                    ),
                    onPressed: () {
                      print("Entered Succesfully");
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 30))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("CLİCK HELP");
                  },
                  child: Text(
                    "HELP",
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: screenwidth / 30,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
