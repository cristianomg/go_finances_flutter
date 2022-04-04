import 'package:flutter/material.dart';
import 'package:go_finances/app/constantes/colors.dart';

import '../componentes/card_header.dart';
import '../componentes/card_list.dart';
import '../componentes/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  _appBar(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: blue,
      title: Row(children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: SizedBox(
            width: 35,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                  'https://avatars.githubusercontent.com/u/53766118?s=400&u=3fbd040a01158079370bb34628d803cf1d884b5d&v=4'),
            ),
          ),
        ),
        const Text('Olá,\nCristiano',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ))
      ]),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove_red_eye_rounded),
            color: orange),
        IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            icon: const Icon(Icons.logout_outlined),
            color: orange),
      ],
    );
  }

  _body() {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 200, child: HomeHeader()),
          const Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              'Listagem',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
                width: double.infinity,
                height: 308,
                child: ListView(shrinkWrap: true, children: const [
                  CardList(),
                  CardList(),
                  CardList(),
                  CardList(),
                  CardList(),
                ])),
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
      appBar: _appBar(context),
      body: _body(),
      bottomNavigationBar: _footer(),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: blue,
          height: 150,
          width: double.infinity,
        ),
        SizedBox(
          width: double.infinity,
          height: 220,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: const [
              CardHeader(
                title: Text('Entradas',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: cardDescription,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    )),
                descriptionIcon: Icon(
                  Icons.arrow_circle_up,
                  color: orange,
                  size: 30,
                ),
              ),
              CardHeader(
                title: Text('Saídas',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: cardDescription,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    )),
                descriptionIcon: Icon(
                  Icons.arrow_circle_down,
                  color: Color(0xFFE83F5B),
                  size: 30,
                ),
              ),
              CardHeader(
                title: Text('Total',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    )),
                descriptionIcon: Icon(
                  Icons.money_off_csred_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                backgroundColor: backgroundCard,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
