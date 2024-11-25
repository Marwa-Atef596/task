import 'package:flutter/material.dart';

import '../core/contstent.dart';

// ignore: camel_case_types
class customParagraph extends StatelessWidget {
  const customParagraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(
          'Your Cheetah Noman Raza 115/ LHR has now picked up your order and is speeding your way. You can reach him 03000090909. To ensure your health and safety, we have tested Noman Raza 115/LHR‘s temperature in the morning and it was 98 degrees Fahrenheit.',
          style: text4),
    );
  }
}
