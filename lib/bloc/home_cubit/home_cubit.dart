import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:gutenberg/bloc/home_cubit/home_state.dart';
import 'package:gutenberg/repository/home_data_repository.dart';
import '../../helpers/custom_error.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeDataRepository homeDataRepository;

  HomeCubit({required this.homeDataRepository})
      : super(const HomeState.initial());

  Future<void> fetchHomeData() async {
    emit(const HomeStateLoading());
    try {
      await homeDataRepository.fetchHomeData().then((homeData) {
        emit(HomeStateSuccess(homeData));
      });
    } on CustomError catch (e) {
      emit(HomeStateError(e.toString()));
    }
    log(state.toString());
  }
}
