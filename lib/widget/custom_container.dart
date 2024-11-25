import 'package:flutter/material.dart';

import '../core/contstent.dart';
import 'custom_app_bar.dart';
import 'custom_list_view.dart';
import 'custom_search_bar.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    double Hieght = MediaQuery.of(context).size.height;
    return Container(
      height: Hieght * 0.38,
      color: Kdark,
      child: Column(
        children: [
           const CustomAppBar(),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: CustomSearchBar(),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 100,
            child: CustomListView(),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
