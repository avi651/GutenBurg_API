import 'package:flutter/material.dart';
import 'package:gutenberg/constants/color_constants.dart';

import '../helpers/color_from_hex.dart';

// ignore: must_be_immutable
class HomeListViewCard extends StatelessWidget {
  int? id;
  String? topic;
  String? title;
  String? iconName;

  HomeListViewCard({
    Key? key,
    required this.id,
    required this.topic,
    required this.title,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 16.0,
        ),
        SizedBox(
          height: 80,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.clear, size: 50.0, color: Colors.blue),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                  Text(title ?? ""),
                  const Spacer(),
                  Icon(Icons.east, size: 30.0, color: parseColor(blueColor)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
