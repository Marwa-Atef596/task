import 'package:flutter/material.dart';
import 'package:task/core/contstent.dart';

// ignore: use_key_in_widget_constructors
class CustomCard extends StatelessWidget {
  final IconData icon;

  final String txt;

  const CustomCard({super.key, required this.icon, required this.txt});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        width: 120,
        //height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  const Text('1125', style: text1),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(txt, // Multi-line text
                      textAlign: TextAlign.center,
                      style: text2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
