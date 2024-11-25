import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../core/contstent.dart';
import 'costom_row.dart';
import 'custom_calender.dart';
import 'custom_healthy.dart';
import 'custom_paragraph.dart';

class CustomAppContainer extends StatelessWidget {
  const CustomAppContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          color: Kback,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              const customRow(),
              const Divider(
                color: Color(0xffCCCCCC),
                thickness: 1,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        Text(
                          'Update',
                          style: text3,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          FontAwesomeIcons.sort,
                          color: Kdark,
                          size: 16,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      customParagraph(),
                      SizedBox(height: 10),

                      customCalender(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const customHealthy(),
              const SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
