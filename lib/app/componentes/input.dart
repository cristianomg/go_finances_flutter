import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String placeHolder;
  const Input({Key? key, required this.placeHolder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7)),
      width: 400,
      height: 55,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: placeHolder,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              alignLabelWithHint: false,
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
