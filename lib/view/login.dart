import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //
  // Atributos
  //

  //Identificador do formulário
  var formKey = GlobalKey<FormState>();

  //Controladores dos campos de texto
  var txtName = TextEditingController();
  var txtEmail = TextEditingController();

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
              SizedBox(height: 30),
              TextFormField(
                controller: txtName,
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
                controller: txtEmail,
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 77, 252, 83),
                  foregroundColor: Color.fromARGB(255, 100, 100, 100),
                  minimumSize: Size(200, 40),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      double v1 = double.parse(txtName.text);
                      double v2 = double.parse(txtEmail.text);
                      double resultado = v1 + v2;

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Resultado: $resultado'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    });
                  }
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                child: Text("Esqueci a senha"),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
