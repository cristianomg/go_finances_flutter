import 'package:flutter/material.dart';
import 'package:go_finances/app/componentes/sign_in_button.dart';
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
                child: SignInButton(
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
                child: SignInButton(
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
