import 'package:flutter/material.dart';
import 'package:task/widget/custom_drop_down.dart';

import '../core/contstent.dart';

// ignore: camel_case_types
class customMenu extends StatelessWidget {
  const customMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 65,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '10',
              style: text2,
            ),
            CustomDropDown(
              icon: Icons.keyboard_arrow_down,
              color: Kdark,
            )
          ],
        ),
      ),
    );
  }
}
