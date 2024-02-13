import 'package:flutter/material.dart';
import 'package:food_recipe_app_design/MyText.dart';

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
    final double screenh = screeninfo.size.height;
    final double screenw = screeninfo.size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Food Recipe"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: screenw,
                child: Image.asset("images/yemekresim.jpeg"),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: screenw / 8,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.orange),
                          onPressed: () {
                            print("Like button clicked");
                          },
                          child: MyText("Like", screenw / 25)),
                    ),
                  ),
                  Expanded(
                      child: SizedBox(
                    width: screenw / 8,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.deepOrangeAccent),
                        onPressed: () {
                          print("Comment button clicked");
                        },
                        child: MyText("Comment", screenw / 25)),
                  )),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(screenh / 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MeatBall",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: screenw / 20,
                      ),
                    ),
                    Row(
                      children: [
                        MyText("Fried valid meatball", screenw / 20),
                        Spacer(),
                        MyText("13 Feb", screenw / 20)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: MyText(
                    "Combine beef, veal, and pork in a large bowl. Mix in cheese, eggs, garlic, parsley, salt, and pepper. Add bread crumbs and slowly mix in water, 1/2 cup at a time, until mixture is moist but still holds its shape (I usually use about 1 1/4 cups of water); shape into meatballs.",
                    screenw / 25),
              )
            ],
          ),
        ));
  }
}
