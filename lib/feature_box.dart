import 'package:chatbot/pallat.dart';
import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  const FeatureBox(
      {Key? key,
      required this.color,
      required this.headerText,
      required this.description})
      : super(key: key);

  final Color color;
  final String headerText;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20).copyWith(left: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                headerText,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Pallete.blackColor),
              ),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.only(right: 20 ),
              child: Text(
                description,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Pallete.blackColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
