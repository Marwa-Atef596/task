// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/assets.dart';
import 'package:task/core/contstent.dart';

class CustomSideMenu extends StatelessWidget {
  const CustomSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Kdark,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Mohsin Faraz",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            accountEmail: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(color: Colors.white),
                child: const Text(
                  "Senior Research Associate",
                  style: text2,
                )),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage(Assets.img),
            ),
            decoration: const BoxDecoration(color: Colors.black),
          ),
          Expanded(
            child: ListView(
              children: [
                ExpansionTile(
                  collapsedIconColor: Colors.white,
                  backgroundColor: Colors.white,
                  leading: const Icon(
                    FontAwesomeIcons.searchengin,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Research",
                    style: text5,
                  ),
                  children: [
                    ListTile(
                      title: const Text(
                        "New Project",
                      ),
                      leading: const Icon(
                        Icons.rocket_launch_outlined,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        "My Projects",
                      ),
                      leading: const Icon(
                        FontAwesomeIcons.layerGroup,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                ExpansionTile(
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.white,
                  backgroundColor: Colors.white,
                  leading: const Icon(
                    Icons.group,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Team",
                    style: text5,
                  ),
                  children: [
                    ListTile(
                      title: const Text("Team Members"),
                      leading: const Icon(
                        Icons.group,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                const ExpansionTile(
                  collapsedIconColor: Colors.white,
                  leading: Icon(
                    FontAwesomeIcons.flaskVial,
                    size: 20,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Laboratory",
                    style: text5,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.checklist,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Task",
                    style: text5,
                  ),
                ),
                const ExpansionTile(
                  collapsedIconColor: Colors.white,
                  leading: Icon(
                    FontAwesomeIcons.database,
                    size: 20,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Data",
                    style: text5,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    FontAwesomeIcons.comments,
                    size: 20,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Discussion",
                    style: text5,
                  ),
                ),
                const ExpansionTile(
                  collapsedIconColor: Colors.white,
                  leading: Icon(
                    Icons.ios_share,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Publish",
                    style: text5,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    FontAwesomeIcons.commentDollar,
                    color: Colors.white,
                  ),
                  title: Text("Expense (Coming Soon)"),
                  enabled: false,
                ),
                const ListTile(
                  leading: Icon(
                    FontAwesomeIcons.sliders,
                    size: 20,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Setting",
                    style: text5,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    FontAwesomeIcons.ticket,
                    size: 20,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Ticketing",
                    style: text5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: ListTile(
              leading: const Icon(Icons.logout, color: Colors.white),
              title:
                  const Text("Sign Out", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
