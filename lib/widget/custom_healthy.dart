import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/contstent.dart';
import 'custom_drop_down.dart';

// ignore: camel_case_types
class customHealthy extends StatelessWidget {
  const customHealthy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'To ensure your health safety...',
                style: text2,
              ),
              const SizedBox(
                width: 6,
              ),
              IconButton(
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 20,
                ),
                onPressed: () {},
              ),
              const VerticalDivider(
                color: Color(0xffCCCCCC),
                thickness: 1,
              ),
              const CustomDropDown(
                icon: Icons.keyboard_arrow_down,
                color: Kdark,
              )
            ],
          ),
        ),
      ),
    );
  }
}
