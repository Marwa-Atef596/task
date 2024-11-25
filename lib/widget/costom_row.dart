import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/contstent.dart';
import 'custom_drop_down.dart';
import 'custom_menu.dart';

// ignore: camel_case_types
class customRow extends StatefulWidget {
  const customRow({
    super.key,
  });

  @override
  State<customRow> createState() => _customRowState();
}

// ignore: camel_case_types
class _customRowState extends State<customRow> {
  bool _isSearchBarVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: _isSearchBarVisible
          ? Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isSearchBarVisible = false; 
                          });
                        },
                        icon: const Icon(Icons.close),
                      ),
                      prefixIcon: const Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 18,
                      ),
                      hintText: "Test project",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const customMenu(),
                const SizedBox(
                  width: 6,
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Kdark,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                        child: CustomDropDown(
                      icon: Icons.keyboard_arrow_up_outlined,
                      color: Colors.white,
                    )),
                  ),
                ),
              ],
            )
          : Row(
              children: [
                const Expanded(
                  child: Text(
                    'Project Update',
                    style: text1,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Kdark,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  ),
                  child: const Text(
                    'Mark all Read',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  onPressed: () {
                    setState(() {
                      _isSearchBarVisible =
                          !_isSearchBarVisible; 
                    });
                  },
                ),
                const SizedBox(
                  width: 5,
                ),
                const customMenu(),
                const SizedBox(
                  width: 6,
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Kdark,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                        child: CustomDropDown(
                      icon: Icons.keyboard_arrow_up_outlined,
                      color: Colors.white,
                    )),
                  ),
                ),
              ],
            ),
    );
  }
}
