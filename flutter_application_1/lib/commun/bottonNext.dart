import 'package:flutter/material.dart';

class bottonNext extends StatelessWidget {
  String nome;
  Function onPressed;

  bottonNext({
    required this.nome, required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(nome),
      ),
    );
  }
}
