import 'package:flutter/material.dart';
import 'package:flutter_banco_douro/ui/styles/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/banner.png"),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset("assets/images/stars.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset("assets/images/logo.png", width: 312, height: 54),
                Column(
                  children: [
                    SizedBox(height: 32),
                    const Text(
                      "Sistema de gestão de contas",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 32),
                    ),
                    SizedBox(height: 32),
                    TextFormField(
                      decoration: InputDecoration(label: Text("E-mail")),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(label: Text("Senha")),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: double
                          .infinity, // Faz o botão ocupar toda a largura disponível
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            AppColor.orange,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "home");
                        },
                        child: Text(
                          "Entrar",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
