import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gutenberg/bloc/book_cubit/book_cubit.dart';
import '../components/detail_components/detail_components.dart';

class DetailScreen extends StatefulWidget {
  final String? detailHeaderTxt;
  const DetailScreen({
    Key? key,
    required this.detailHeaderTxt,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();
    _fetchBookData();
  }

  Future _fetchBookData() async {
    BlocProvider.of<BookCubit>(context)
        .fetchBookData("?topic=${widget.detailHeaderTxt!.toLowerCase()}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 16, top: 80, bottom: 16),
      child: DetailComponents(detailHeaderTxt: widget.detailHeaderTxt),
    ));
  }
}
