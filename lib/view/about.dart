import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                'Everton Malta Gouveia de Queiroz',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Lista de Compra',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Projeto feito como prova p1 de programação para dispositivos moveis.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.camera),
                    onPressed: () async {
                      final Uri url = Uri.parse(
                          'https://www.instagram.com/everton.malta.7/');
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.catching_pokemon),
                    onPressed: () async {
                      final Uri url =
                          Uri.parse('https://github.com/evertonMalta/prova_p1');
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
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
