import 'package:flutter/material.dart';

import '../constantes/colors.dart';

class CardHeader extends StatelessWidget {
  final Text title;
  final Color backgroundColor;
  final Icon descriptionIcon;
  const CardHeader(
      {Key? key,
      required this.title,
      this.backgroundColor = Colors.white,
      required this.descriptionIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10, left: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
          child: Container(
            width: 330,
            color: backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [title, const Spacer(), descriptionIcon],
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text('R\$ 13.00,00',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: cardDescription)),
                    ),
                    const Text('Ultima entrada em 13 de abril',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF969CB2))),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
