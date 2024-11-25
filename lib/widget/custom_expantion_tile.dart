import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/contstent.dart';
import 'package:task/widget/content.dart';

class CustomExpantionTile extends StatefulWidget {
  const CustomExpantionTile({super.key});

  @override
  State<CustomExpantionTile> createState() => _CustomExpantionTileState();
}

class _CustomExpantionTileState extends State<CustomExpantionTile> {
  // ignore: unused_field
  final bool _customIcon = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Kback,
        ),
        child: ExpansionTile(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Tasks Quick View',
                style: text1,
              ),
              const SizedBox(
                width: 70,
              ),
              IconButton(
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 20,
                ),
                onPressed: () {},
              ),
            ],
          ),
          // trailing:
          //     Icon(_customIcon ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_up),
          children: const [ContentExpantion()],
          onExpansionChanged: (bool expanded) {
            setState(() {});
          },
        ),
      ),
    );
  }
}
