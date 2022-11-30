import 'package:flutter/material.dart';
import 'package:gutenberg/constants/color_constants.dart';
import '../helpers/color_from_hex.dart';
import 'wid_txt.dart';

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
        SizedBox(
          height: 80,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.clear, size: 50.0, color: Colors.blue),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                  //Text(title ?? ""),
                  WidText(
                    title: title ?? "",
                    fontFamily: 'Montserrat-Black',
                    widColor: parseColor(blackColor),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
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
