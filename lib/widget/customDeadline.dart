// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:task/core/contstent.dart';

class Customdeadline extends StatelessWidget {
  const Customdeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Deadline:',
                        style: text2,
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        'Until:',
                        style: text2,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Starting Date",
                            suffixIcon:
                                const Icon(Icons.calendar_month_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Ending Date",
                            suffixIcon:
                                const Icon(Icons.calendar_month_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Status:',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    label: const Text('Completed'),
                    onSelected: (bool value) {},
                    backgroundColor: Colors.green,
                    labelStyle: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    label: const Text('Delayed'),
                    onSelected: (bool value) {},
                    backgroundColor: Colors.orange,
                    labelStyle: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    label: const Text('On Going'),
                    onSelected: (bool value) {},
                    backgroundColor: Colors.blue,
                    labelStyle: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    label: const Text('On Hold'),
                    onSelected: (bool value) {},
                    backgroundColor: Colors.purple,
                    labelStyle: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.white),
              onPressed: () {},
              child: const Text(
                'Apply Filter',
                style: text2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
