// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

import 'commun/bottonNext.dart';

main() {
  runApp(new PrimeiraAplicacao());
}

class PrimeiraAplicacaoState extends State<PrimeiraAplicacao> {
  String textoEmail = " ";
  String textoSenha = " ";

  String valorEmail = " ";
  String valorSenha = " ";

  void mudaTexto() {
    setState(() {
      textoEmail = valorEmail;
      textoSenha = valorSenha;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Minha Aplicação TOP"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 165, 165, 165),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  onChanged: (email) {
                    valorEmail = email;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 165, 165, 165)),
                      ),
                      focusedBorder: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: 'Enter a password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    onChanged: (password) {
                      valorSenha = password;
                    },
                    obscureText: true),
              ),
              Container(
                margin: const EdgeInsets.all(100),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Text("Email: " + textoEmail.toString()),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Text("Password: " + textoSenha.toString()),
                    ), //ou "$textoInical"
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: mudaTexto,
                child: Text("Exibir dados"),
              ),
              bottonNext( //eu criei esse botão
                nome: "Next Page",
                onPressed: mudaTexto, //mudar isso depois
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrimeiraAplicacao extends StatefulWidget {
  @override
  PrimeiraAplicacaoState createState() {
    return PrimeiraAplicacaoState();
  }
}

/*

 title: TextField(
            onChanged: (text) {
              valor = text;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              hintText: "Informe um nome",
            ),
          ),

obscureText: true 
KeyboardType: TextInputType.ema...
*/