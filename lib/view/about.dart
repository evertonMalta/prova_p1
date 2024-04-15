import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sobre",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Sobre')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('lib/images/profile_pick.jpg'),
                ),
              ),
              const Text(
                'Nome do Desenvolvedor',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Nome do Projeto',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Descrição do Projeto',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.facebook),
                    onPressed: () {
                      // Adicione a funcionalidade do botão aqui
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.access_alarm_rounded),
                    onPressed: () {
                      // Adicione a funcionalidade do botão aqui
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.access_alarm_rounded),
                    onPressed: () {
                      // Adicione a funcionalidade do botão aqui
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
