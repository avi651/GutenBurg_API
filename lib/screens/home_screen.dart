import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gutenberg/bloc/home_cubit/home_cubit.dart';
import '../components/home_components/home_components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _fetchDataHome();
  }

  Future _fetchDataHome() async {
    BlocProvider.of<HomeCubit>(context).fetchHomeData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16, top: 80, bottom: 16),
        child: HomeComponents(),
      ),
    );
  }
}
