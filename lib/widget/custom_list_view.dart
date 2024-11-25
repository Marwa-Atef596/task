import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/widget/custom_card.dart';

class CustomListView extends StatelessWidget {
  CustomListView({
    super.key,
  });
  final List<Map<String, dynamic>> data = [
    {"icon": Icons.people_outlined, "txt": "User\nInvolved"},
    {"icon": FontAwesomeIcons.briefcase, "txt": "Equipment\nAvailable"},
    {"icon": Icons.checklist, "txt": "Tasks\nCompleted"},
    {"icon": Icons.local_shipping, "txt": "Orders\nShipped"},
    {"icon": Icons.warning, "txt": "Issues\nReported"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomCard(
          icon: data[index]["icon"],
          txt: data[index]["txt"],
        );
      },
    );
  }
}
