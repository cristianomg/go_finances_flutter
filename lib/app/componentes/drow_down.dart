import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({
    Key? key,
  }) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final List<String> _categories = [
    'Alimentação',
    'Transporte',
    'Lazer',
    'Saúde',
    'Educação',
    'Outros',
  ];

  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      width: double.infinity,
      height: 60,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
        child: DropdownButton<dynamic>(
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff969CB2),
          ),
          icon: const Icon(Icons.arrow_drop_down_sharp),
          hint: const Text(
            'Categoria',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff969CB2),
            ),
          ),
          iconEnabledColor: const Color(0xff969CB2),
          isExpanded: true,
          underline: Container(
            color: Colors.transparent,
          ),
          value: _selectedCategory,
          items: _categories
              .map((e) => DropdownMenuItem(child: Text(e), value: e))
              .toList(),
          onChanged: (val) {
            setState(() {
              _selectedCategory = val;
            });
          },
        ),
      ),
    );
  }
}
