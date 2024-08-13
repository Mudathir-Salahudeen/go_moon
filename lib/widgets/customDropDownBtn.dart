import 'package:flutter/material.dart';

class CustomDropDownBtn extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDownBtn({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(53, 53, 53, 1.0),
          borderRadius: BorderRadius.circular(
            10,
          )),
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: DropdownButton(
        value: values.first,
        items: values.map(
          (toElement) {
            return DropdownMenuItem(
              value: toElement,
              child: Text(
                toElement,
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(
          53,
          53,
          53,
          1.0,
        ),
        onChanged: (_) {},
      ),
    );
  }
}
