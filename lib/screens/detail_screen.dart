import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gutenberg/bloc/book_cubit/book_cubit.dart';
import 'package:gutenberg/bloc/book_cubit/book_state.dart';

import '../components/detail_components/detail_components.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

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
    BlocProvider.of<BookCubit>(context).fetchBookData("?topic=children");
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16, top: 80, bottom: 16),
      child: DetailComponents(),
    ));
  }
}
