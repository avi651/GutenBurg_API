import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/home_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeStateInitial;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.success(List<HomeModel> homeModel) = HomeStateSuccess;
  const factory HomeState.error(String message) = HomeStateError;
}
