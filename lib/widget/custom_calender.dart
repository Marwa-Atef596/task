import 'package:flutter/material.dart';

import '../core/contstent.dart';

// ignore: camel_case_types
class customCalender extends StatelessWidget {
  const customCalender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Kdark,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
      ),
      child: const Row(
        children: [
          Icon(Icons.calendar_month_outlined, color: Colors.white, size: 18),
          SizedBox(width: 8),
          Text(
            'Mon, 10 July 2022',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
