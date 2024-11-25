// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/contstent.dart';
import 'package:task/widget/expanitionDeadline.dart';

class CustomListDialog extends StatelessWidget {
  const CustomListDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18,
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            'Test Project with Mohsin',
            style: text2,
          ),
          const SizedBox(
            width: 9,
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.keyboard_arrow_up,
                size: 30,
              ))
        ],
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.75,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Kdark,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            // ignore: prefer_const_constructors
                            contentPadding: EdgeInsets.all(2),
                            hintText: "Search",
                            prefixIcon: const Icon(Icons.search),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 42,
                        width: 60,
                        padding: const EdgeInsets.only(right: 6, left: 6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: DropdownButton<String>(
                          value: "10",
                          items: ["5", "10", "15"]
                              .map((value) => DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  ))
                              .toList(),
                          onChanged: (value) {},
                          dropdownColor: Colors.white,
                          underline: const SizedBox(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: expanitionDeadline(),
                  ),
                  const SizedBox(height: 12),
                  const Divider(
                      height: 1, color: Color.fromARGB(255, 255, 255, 255)),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Research name",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            FontAwesomeIcons.sort,
                            color: Colors.white,
                            size: 16,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Status",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            FontAwesomeIcons.sort,
                            color: Colors.white,
                            size: 16,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                itemCount: 10,
                itemBuilder: (context, index) {
                  final statuses = ["On Going", "Delayed", "Completed"];
                  final colors = [Colors.blue, Colors.orange, Colors.green];
                  final statusIndex = index % statuses.length;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text("First Research Project"),
                          trailing: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: colors[statusIndex],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              statuses[statusIndex],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const Divider()
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
