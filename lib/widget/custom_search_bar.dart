import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/widget/CustomListDialog.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: "Test Project with Mohsin",
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 18,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const CustomListDialog();
                });
          },
          icon: const Icon(
            Icons.keyboard_arrow_down,
            size: 30,
          ),
        ),
        // const CustomDropDown(
        //   icon: Icons.keyboard_arrow_down,
        //   color: Kdark,
        // ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}






//  Container(
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(8),
//     color: Kback,
//   ),
//   child: ExpansionTile(
//     title: Row(
//       //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         IconButton(
//           icon: Icon(
//             FontAwesomeIcons.magnifyingGlass,
//             size: 18,
//           ),
//           onPressed: () {},
//         ),
//         // SizedBox(
//         //   width: 20,
//         // ),
//         Text(
//           'Test Project with Mohsin',
//           style: text2,
//         ),
//       ],
//     ),
//     // trailing:
//     //     Icon(_customIcon ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_up),
//     children: [ContentExpantion()],
//     onExpansionChanged: (bool expanded) {
//       setState(() {});
//     },
//   ),
// );
