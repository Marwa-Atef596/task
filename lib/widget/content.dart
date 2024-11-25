import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/assets.dart';
import 'package:task/core/contstent.dart';

class ContentExpantion extends StatelessWidget {
  const ContentExpantion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 6),
              // child: Row(
              //   children: [
              //     ...[
              //       {'title': 'Team name', 'icon': FontAwesomeIcons.sort},
              //       {'title': 'Creator', 'icon': FontAwesomeIcons.sort},
              //       {'title': 'Assigned to', 'icon': FontAwesomeIcons.sort},
              //       {'title': 'Deadline', 'icon': FontAwesomeIcons.sort},
              //       {'title': 'Status', 'icon': FontAwesomeIcons.sort},
              //       {'title': 'Action', 'icon': FontAwesomeIcons.sort},
              //     ].map((header) {
              //       return Row(
              //         children: [
              //           _buildHeaderCell(header['title'] as String),
              //           Icon(header['icon'] as IconData,
              //               size: 16, color: Kdark),
              //         ],
              //       );
              //     }).toList(),
              //   ],
              // )

              child: Row(
                children: [
                  _buildHeaderCell('Team name'),
                  _buildHeaderCell('Creator'),
                  _buildHeaderCell('Assigned to'),
                  _buildHeaderCell('Deadline'),
                  _buildHeaderCell('Status'),
                  _buildHeaderCell('Action'),
                ],
              ),
            ),
            const Divider(),
            Column(
              children: [
                for (int i = 0; i < 5; i++)
                  Column(
                    children: [
                      _buildTaskRow(),
                      if (i < 4)
                        // ignore: prefer_const_constructors
                        Divider(),
                    ],
                  ),
              ],
            )

            // Column(
            //   children: List.generate(
            //     5,
            //     (index) => _buildTaskRow(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderCell(String title) {
    return Container(
      width: 120,
      alignment: Alignment.center,
      child: Text(
        title,
        style: text2,
      ),
    );
  }

  Widget _buildTaskRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          _buildTaskCell('Design Team'),
          _buildCreatorCell('Mohsin Far...'),
          _buildAssignedToCell(),
          _buildTaskCell('Dec 26, 2023'),
          _buildStatusCell('On Going'),
          _buildActionCell(),
        ],
      ),
    );
  }

  Widget _buildTaskCell(String content) {
    return Container(
      width: 120,
      alignment: Alignment.center,
      child: Text(
        content,
        overflow: TextOverflow.ellipsis,
        style: text4,
      ),
    );
  }

  Widget _buildCreatorCell(String creatorName) {
    return SizedBox(
      width: 120,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 1.5),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage(Assets.img2),
              radius: 16,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              creatorName,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAssignedToCell() {
    return const SizedBox(
      width: 120,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(Assets.img3),
            radius: 16,
          ),
          SizedBox(width: 0),
          CircleAvatar(
            backgroundImage: AssetImage(Assets.img4),
            radius: 16,
          ),
          CircleAvatar(
            backgroundColor: Kdark,
            radius: 16,
            child: Text(
              '+1',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusCell(String status) {
    return Container(
      width: 120,
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          status,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }

  Widget _buildActionCell() {
    return const SizedBox(
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.edit, color: Kdark),
          Icon(Icons.message_outlined, color: Kdark),
          Icon(FontAwesomeIcons.folderOpen, color: Kdark),
        ],
      ),
    );
  }
}
