// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:two_screen/SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Aplicativo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Aplicativo',
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Column(
            children: [
              Text(
                "Bem-vindo",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 1.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80')),
                              ),
                            ),
                            SizedBox(
                                width:
                                    16), // Espaço entre o avatar e o campo de texto
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 12),
                              child: TextField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(
                                          255, 165, 165, 165),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(),
                                  labelText: "Name",
                                  hintText: 'Enter your name',
                                  prefixIcon: Icon(Icons.apple),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 12),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(
                                          255, 165, 165, 165),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(),
                                  labelText: "Email",
                                  hintText: 'Enter your email',
                                  prefixIcon: Icon(Icons.email),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 12),
                              child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: const Color.fromARGB(
                                              255, 165, 165, 165)),
                                    ),
                                    focusedBorder: OutlineInputBorder(),
                                    labelText: "Password",
                                    hintText: 'Enter a password',
                                    prefixIcon: Icon(Icons.lock),
                                  ),
                                  obscureText: true),
                            ),
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.cyan),
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white),
                                        ),
                                        child: Text("Exibir"),
                                        onPressed: null),
                                  ),
                                  const SizedBox(width: 23),
                                  Container(
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.red),
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                      ),
                                      child: Text("Next Page"),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  SecondScreen()),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
