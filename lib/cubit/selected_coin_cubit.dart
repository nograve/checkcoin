import 'package:flutter_bloc/flutter_bloc.dart';

part 'selected_coin_state.dart';

class SelectedCoinCubit extends Cubit<SelectedCoinState> {
  SelectedCoinCubit({required String? selectedCoin})
      : super(SelectedCoinState(selectedCoin: selectedCoin));

  void changeCoin({required String? coin}) =>
      emit(SelectedCoinState(selectedCoin: coin));
}
