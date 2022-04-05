// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'register_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  _navigation(index) {
    if (_currentIndex == index) return;

    setState(() {
      _currentIndex = index;
    });
  }

  _buildScreen() {
    switch (_currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return RegisterPage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          _navigation(value);
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
      ),
    );
  }
}
