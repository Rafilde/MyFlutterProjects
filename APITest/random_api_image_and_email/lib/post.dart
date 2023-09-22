// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    List<Pessoa> pessoa;

    Welcome({
        required this.pessoa,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        pessoa: List<Pessoa>.from(json["pessoa"].map((x) => Pessoa.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "pessoa": List<dynamic>.from(pessoa.map((x) => x.toJson())),
    };
}

class Pessoa {
    String nome;
    List<Telefone> telefone;
    String email;
    String nascimento;

    Pessoa({
        required this.nome,
        required this.telefone,
        required this.email,
        required this.nascimento,
    });

    factory Pessoa.fromJson(Map<String, dynamic> json) => Pessoa(
        nome: json["nome"],
        telefone: List<Telefone>.from(json["telefone"].map((x) => Telefone.fromJson(x))),
        email: json["email"],
        nascimento: json["nascimento"],
    );

    Map<String, dynamic> toJson() => {
        "nome": nome,
        "telefone": List<dynamic>.from(telefone.map((x) => x.toJson())),
        "email": email,
        "nascimento": nascimento,
    };
}

class Telefone {
    String residencial;
    String celular;

    Telefone({
        required this.residencial,
        required this.celular,
    });

    factory Telefone.fromJson(Map<String, dynamic> json) => Telefone(
        residencial: json["residencial"],
        celular: json["celular"],
    );

    Map<String, dynamic> toJson() => {
        "residencial": residencial,
        "celular": celular,
    };
}

