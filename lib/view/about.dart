import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

void main() {
  runApp(const AboutApp());
}

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('lib/images/profile_pick.jpg')),
              Text("Everton Malta GOuveia de Qeurioz"),
              Text("Projeto Lista de Compras"),
              Text("Este projeto foi feito para a prova P1"),
              Row(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
