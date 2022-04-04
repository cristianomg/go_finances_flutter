// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_finances/app/componentes/footer.dart';
import 'package:go_finances/app/constantes/colors.dart';

import '../componentes/drow_down.dart';
import '../componentes/input.dart';
import '../componentes/toggle_in_out.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  _appBar() {
    return AppBar(
      title: const Center(
          child: Text(
        'Cadastro',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 18),
      )),
    );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 8),
            child: Input(placeHolder: 'Nome'),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Input(placeHolder: 'Preço'),
          ),
          const ToggleInOut(),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: DropDown(),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: orange,
                ),
                onPressed: () {},
                child: const Text(
                  'Enviar',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _footer() {
    return const Footer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _footer(),
    );
  }
}
