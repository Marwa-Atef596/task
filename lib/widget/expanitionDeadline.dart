// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'customDeadline.dart';

// ignore: camel_case_types
class expanitionDeadline extends StatefulWidget {
  const expanitionDeadline({
    super.key,
  });

  @override
  State<expanitionDeadline> createState() => _expanitionDeadlineState();
}

// ignore: camel_case_types
class _expanitionDeadlineState extends State<expanitionDeadline> {
  // ignore: unused_field
  final bool _customIcon = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: const Icon(
        FontAwesomeIcons.barsStaggered,
        color: Colors.white,
      ),
      title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Project List",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ]),
      children: const [Customdeadline()],
      onExpansionChanged: (bool expanded) {
        setState(() {});
      },
    );
  }
}
