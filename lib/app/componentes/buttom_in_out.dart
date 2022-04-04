import 'package:flutter/material.dart';

class ButtonInOut extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  const ButtonInOut(
      {Key? key,
      required this.text,
      required this.icon,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 179,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(7),
          border: const Border(
            top: BorderSide(
              color: Color(0xff969CB2),
              width: 2,
            ),
            bottom: BorderSide(
              color: Color(0xff969CB2),
              width: 2,
            ),
            left: BorderSide(
              color: Color(0xff969CB2),
              width: 2,
            ),
            right: BorderSide(
              color: Color(0xff969CB2),
              width: 2,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(icon, color: iconColor),
              const SizedBox(
                width: 14,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Color(0xff363F5F),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
