import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gutenberg/bloc/book_cubit/book_cubit.dart';
import 'package:gutenberg/bloc/home_cubit/home_cubit.dart';
import 'package:gutenberg/repository/book_data_repository.dart';
import 'package:gutenberg/repository/home_data_repository.dart';
import 'package:gutenberg/screens/home_screen.dart';
import 'package:gutenberg/services/book_data_services.dart';
import 'package:gutenberg/services/home_data_services.dart';

import 'bloc_observer/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = GutenbergBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<HomeDataRepository>(
          create: (context) =>
              HomeDataRepository(homeDataServices: HomeDataServices()),
        ),
        RepositoryProvider<BookDataRepository>(
          create: (context) =>
              BookDataRepository(bookApiServices: BookApiServices()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<BookCubit>(
            create: (context) => BookCubit(
                bookDataRepository: context.read<BookDataRepository>()),
          ),
          BlocProvider<HomeCubit>(
            create: (context) => HomeCubit(
              homeDataRepository: context.read<HomeDataRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
