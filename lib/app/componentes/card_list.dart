import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Card(
          child: SizedBox(
            height: 170,
            width: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      child: Text(
                        "Desenvolvimento de site",
                        style: TextStyle(
                            color: Color(0xFF363F5F),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'R\$ 13.00,00',
                        style: TextStyle(
                          color: Color(0xFF12a454),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: const [
                        Text('Vendas'),
                        Spacer(),
                        Text('13/04/2020'),
                      ],
                    )
                  ]),
            ),
          ),
        ));
  }
}
