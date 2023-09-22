import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pessoa> pessoas = []; // Lista para armazenar os dados da API
  bool dadosCarregados = false; // Flag para controlar a exibição dos dados

  String url = "";
  Future getAPI() async {
    Pessoa resultado;
    url = "https://my-json-server.typicode.com/Belmondo/fakedb/db";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var JsonData = jsonDecode(response.body);
      /*resultado = new Pessoa.fromJson(JsonData["pessoa"][0]);
      print(resultado.nome);
      print(resultado.email);
      print(resultado.nascimento);
      print(resultado.telefone);*/
      setState(() {
        pessoas = List<Pessoa>.from(JsonData['pessoa'].map((data) => Pessoa.fromJson(data)));
        dadosCarregados = true; // Define a flag para verdadeira após carregar os dados
      });
    } else {
      print("Erro meu fi!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consomindo API"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.08,
            ),
            ElevatedButton(onPressed: getAPI, child: Text("Pesquisar usuários")), 
            if (dadosCarregados) // Mostra os dados apenas quando a flag estiver definida como verdadeira
              Expanded(
                child: ListView.builder(
                  itemCount: pessoas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Nome: ${pessoas[index].nome}"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email: ${pessoas[index].email}"),
                          Text("Telefone Residencial: ${pessoas[index].telefone[0].residencial}"),
                          Text("Telefone Celular: ${pessoas[index].telefone[0].celular}"),
                        ],
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
