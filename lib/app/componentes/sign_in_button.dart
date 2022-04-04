// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final Function()? onPressed;

  const SignInButton({
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
