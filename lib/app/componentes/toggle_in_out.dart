import 'package:flutter/material.dart';

import 'buttom_in_out.dart';

class ToggleInOut extends StatefulWidget {
  const ToggleInOut({Key? key}) : super(key: key);

  @override
  State<ToggleInOut> createState() => _ToggleInOutState();
}

class _ToggleInOutState extends State<ToggleInOut> {
  final List<bool> _selections = List.generate(2, (index) => false);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      borderColor: Colors.transparent,
      selectedColor: const Color(0xffE83F5B),
      fillColor: const Color(0xffE83F5B).withOpacity(0.1),
      selectedBorderColor: Colors.transparent,
      isSelected: _selections,
      onPressed: (int index) {
        setState(() {
          _selections[index] = true;
          for (int i = 0; i < _selections.length; i++) {
            if (i != index) {
              _selections[i] = false;
            }
          }
        });
      },
      children: const [
        ButtonInOut(
            text: 'Income',
            icon: Icons.arrow_circle_up_outlined,
            iconColor: Color(0xff12A454)),
        ButtonInOut(
            text: 'Outcome',
            icon: Icons.arrow_circle_down_outlined,
            iconColor: Color(0xffE83F5B)),
      ],
    );
  }
}
