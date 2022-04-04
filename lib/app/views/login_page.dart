// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_finances/app/constantes/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void _onPressed(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      body: Stack(
        children: [
          Container(
            color: blue,
            height: 500,
          ),
          SizedBox(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 150, right: 48, left: 48, bottom: 30),
                child: Image.asset('assets/images/logo.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 48, right: 48),
                child: SizedBox(
                  child: Text(
                    'Controle suas \nfinanças de forma \nmuito simples',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 38,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 48, right: 48, bottom: 30),
                child: Text('Faça seu login com\numa das contas abaixo',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white,
                    )),
              ),
              Center(
                child: LoginButton(
                  icon: const Icon(Icons.email),
                  text: 'Entre com Google',
                  onPressed: () {
                    _onPressed(context);
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: LoginButton(
                  icon: const Icon(Icons.apple),
                  text: 'Entre com Apple',
                  onPressed: () {
                    _onPressed(context);
                  },
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final Function()? onPressed;

  const LoginButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 350,
      child: RaisedButton(
          onPressed: onPressed,
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 56,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: icon,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.cyan,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 90,
                ),
                Text(text,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black,
                    ))
              ],
            ),
          )),
    );
  }
}
