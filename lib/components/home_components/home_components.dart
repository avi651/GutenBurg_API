import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/home_cubit/home_cubit.dart';
import '../../bloc/home_cubit/home_state.dart';
import '../../constants/color_constants.dart';
import '../../constants/string_constants.dart';
import '../../helpers/color_from_hex.dart';
import '../../helpers/create_routes.dart';
import '../../screens/detail_screen.dart';
import '../../widgets/home_list_view_card.dart';
import '../../widgets/wid_txt.dart';

class HomeComponents extends StatelessWidget {
  const HomeComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WidText(
          title: "Gutenberg",
          fontFamily: 'Montserrat-Black',
          widColor: parseColor(blueColor),
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
                          createRoute(DetailScreen(
                              detailHeaderTxt:
                                  state.homeModel[index].title ?? "")),
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
    );
  }
}
