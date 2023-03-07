import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/data/model/home/menu/get_main_menu/res_get_main_menu.dart';
import 'package:pleasure_in_vegas/repositery/home_respository.dart';
import 'package:pleasure_in_vegas/utils/constants/loading_dialog.dart';
import 'package:pleasure_in_vegas/utils/dialog_utils.dart';

final homeProvider =
    StateNotifierProvider<HomeViewModel, AsyncValue<ResGetMainMenu>>(
        (ref) => HomeViewModel((ref.read)));

class HomeViewModel extends StateNotifier<AsyncValue<ResGetMainMenu>> {
  HomeViewModel(this._reader) : super(const AsyncValue.loading());
  // late final Reader _reader;
  late final _reader;

  late final HomeRepository repositery = _reader(homeRepositoryProvider);

  Future<ResGetMainMenu?> getMainMenu({
    required BuildContext context,
  }) async {
    final result = await repositery.getMainMenu();
    return result.when(success: (result) async {
      state = AsyncValue.data(result);
      return result;
    }, failure: (error) {
      displayToast(error.response!.statusMessage.toString());
    });
  }
}
