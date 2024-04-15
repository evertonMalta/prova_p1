import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cria Conta',
      home: PrincipalView(),
    );
  }
}

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  var formKey = GlobalKey<FormState>();

  var txtValor1 = TextEditingController();
  var txtValor2 = TextEditingController();

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
                controller: txtValor1,
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Email...',
                  border: OutlineInputBorder(),
                ),
                //
                // Validação
                //
                validator: (value) {
                  if (value == null) {
                    return 'Informe um Email valido!';
                  } else if (value.isEmpty) {
                    return 'Informe um Email valido!';
                  }
                  //validar email

                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: txtValor2,
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

                  //Retornar null significa que o campo
                  //foi validado com sucesso!
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
                      double v1 = double.parse(txtValor1.text);
                      double v2 = double.parse(txtValor2.text);
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
