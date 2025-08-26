import 'package:flutter/material.dart';
import 'package:gsg_application/screens/homa_page.dart';

class SectionWidget extends StatelessWidget {
  final String sectionTitle;

  const SectionWidget({super.key, required this.sectionTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.centerRight,
              begin: Alignment.centerLeft,
              colors: [Color(0xffC2D7F2), Colors.white],
            ),
          ),
          child: Text(
            sectionTitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
          onPressed: () {
            showSnackBar(context, "Showing all items");
          },
          child: Text(
            'View All',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
