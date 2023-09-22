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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 220, 38, 38)),
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Add numbers",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.white,
                fontFamily: 'Oswald'),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: Image(
            image: AssetImage('assets/space_1.jpg'),
          ),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Text("Click")),
      ),
    );
  }
}
