import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gutenberg/bloc/home_cubit/home_cubit.dart';
import 'package:gutenberg/bloc/home_cubit/home_state.dart';
import 'package:gutenberg/helpers/color_from_hex.dart';
import 'package:gutenberg/screens/detail_screen.dart';
import 'package:gutenberg/widgets/wid_txt.dart';

import '../constants/color_constants.dart';
import '../constants/string_constants.dart';
import '../helpers/create_routes.dart';
import '../widgets/home_list_view_card.dart';

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
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16.0, right: 16, top: 80, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WidText(
              title: "Gutenberg",
              fontFamily: 'Montserrat-Black',
              widColor: parseColor(blueColor), //parseColor(lightBlueColor),
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
            WidText(
              title: "Project",
              fontFamily: 'Montserrat-Black',
              widColor: parseColor(blueColor),
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            WidText(
              title: titleTextConst,
              fontFamily: 'Montserrat-Black',
              widColor: parseColor(blackColor),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 0)),
            Expanded(
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  if (state is HomeStateInitial) {
                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  }
                  if (state is HomeStateLoading) {
                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  }
                  if (state is HomeStateError) {
                    return const Center(
                      child: Text('Error'),
                    );
                  }
                  if (state is HomeStateSuccess) {
                    return ListView.builder(
                      itemCount: state.homeModel.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              createRoute(const DetailScreen()),
                            );
                          },
                          child: HomeListViewCard(
                              id: state.homeModel[index].id,
                              topic: state.homeModel[index].topic,
                              title: state.homeModel[index].title,
                              iconName: state.homeModel[index].iconName ?? ""),
                        );
                      },
                    );
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
