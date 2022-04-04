import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  _navigation(value, BuildContext context) {
    switch (value) {
      case 0:
        Navigator.of(context).pushReplacementNamed('/home');
        break;
      case 1:
        Navigator.of(context).pushReplacementNamed('/register');
        break;
      default:
        Navigator.of(context).pushReplacementNamed('/home');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        _navigation(value, context);
      },
      items: const [
        BottomNavigationBarItem(
          label: 'Listagem',
          icon: Icon(Icons.list_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Cadastro',
          icon: Icon(Icons.money_off_csred_outlined),
        ),
      ],
    );
  }
}
