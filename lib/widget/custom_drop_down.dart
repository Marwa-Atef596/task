import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({super.key, required this.icon, required this.color});
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
     
      items: <String>['', ''].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
       
        // ignore: avoid_print
        print('Selected: $newValue');
      },
      underline: Container(),
      icon: Icon(
        icon,
        size: 30,
        color: color,
      ),
    );
  }
}
