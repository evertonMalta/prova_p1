import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cria Conta',
      home: CreateAccountView(),
    );
  }
}

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  var formKey = GlobalKey<FormState>();

  var txtName = TextEditingController();
  var txtEmail = TextEditingController();
  var txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 100, 50, 100),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: txtName,
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Nome...',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Informe um Nome valido!';
                  } else if (value.isEmpty) {
                    return 'Informe um Nome valido!';
                  }

                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: txtEmail,
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Email...',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Informe um Email valido!';
                  } else if (value.isEmpty) {
                    return 'Informe um Email valido!';
                  }

                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: txtPassword,
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Senha...',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Informe a senha!';
                  } else if (value.isEmpty) {
                    return 'Informe a senha!';
                  }
                  return null;
                },
              ),
              SizedBox(height: 150),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 252, 77, 77),
                      foregroundColor: Color.fromARGB(255, 100, 100, 100),
                      minimumSize: Size(200, 40),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Calcelar',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 77, 252, 83),
                      foregroundColor: Color.fromARGB(255, 100, 100, 100),
                      minimumSize: Size(200, 40),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Entrar',
                      style: TextStyle(fontSize: 28),
                    ),
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
