import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import '../helpers/color_from_hex.dart';
import 'wid_txt.dart';

class DetailScreenBackWidget extends StatelessWidget {
  final String? detailHeaderTxt;
  const DetailScreenBackWidget({Key? key, required this.detailHeaderTxt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              size: 40.0,
              color: parseColor(blueColor),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 16)),
          WidText(
            title: detailHeaderTxt,
            fontFamily: 'Montserrat-Black',
            widColor: parseColor(blueColor),
            fontSize: 40,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
