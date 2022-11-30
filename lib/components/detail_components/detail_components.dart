import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gutenberg/models/book_model.dart';
import 'package:gutenberg/widgets/details_screen_back_widget.dart';

import '../../bloc/book_cubit/book_cubit.dart';
import '../../bloc/book_cubit/book_state.dart';
import '../../widgets/details_screen_grid_widget.dart';

class DetailComponents extends StatelessWidget {
  const DetailComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const DetailScreenBackWidget(),
          BlocBuilder<BookCubit, BookDataState>(
            builder: (context, state) {
              if (state is BookDataStateInitial) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              if (state is BookDataStateLoading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              if (state is BookDataStateError) {
                return const Center(
                  child: Text('Error'),
                );
              }
              if (state is BookStateSuccess) {
                return DetailScreenGridView(bookModel: state.bookModel);
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
