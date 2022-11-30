import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../helpers/color_from_hex.dart';

// ignore: must_be_immutable
class SearchWidget extends StatefulWidget {
  final void Function(String)? onChanged;
  final String? hintText;
  const SearchWidget({
    Key? key,
    required this.onChanged,
    this.hintText,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        style: TextStyle(color: parseColor(blackColor)),
        autofocus: false,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          fillColor: Colors.blue,
          border: const OutlineInputBorder(),
          prefixIcon: const Icon(Icons.search),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
