import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/data/model/auth/sign_in/req_sign_in.dart';
import 'package:pleasure_in_vegas/data/model/auth/sign_in/res_sign_in.dart';
import 'package:pleasure_in_vegas/data/model/auth/sign_up/req_sign_up.dart';
import 'package:pleasure_in_vegas/data/model/auth/sign_up/res_sign_up.dart';

import 'package:pleasure_in_vegas/di/locator.dart';
import 'package:pleasure_in_vegas/repositery/auth_respository.dart';
import 'package:pleasure_in_vegas/utils/constants/loading_dialog.dart';
import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/constants/preference_key_constant.dart';
import 'package:pleasure_in_vegas/utils/dialog_utils.dart';
import 'package:pleasure_in_vegas/utils/preference_utils.dart';

final authProvider =
    StateNotifierProvider<AuthViewModel, AsyncValue<ResSignUp>>(
        (ref) => AuthViewModel((ref.read)));

class AuthViewModel extends StateNotifier<AsyncValue<ResSignUp>> {
  AuthViewModel(this._reader) : super(const AsyncValue.loading());
  // late final Reader _reader;
  late final _reader;

  late final AuthRepository repositery = _reader(authRepositoryProvider);

  Future<ResSignUp?> signUp(
      {required BuildContext context, required ReqSignUp data}) async {
    showLoadingDialog(context: context);
    final result = await repositery.signUp(data);
    return result.when(success: (result) async {
      hideLoadingDialog(context: context);
      navigationService.pushAndRemoveUntil(routeSignIn);

      return result;
    }, failure: (error) {

      hideLoadingDialog(context: context);

      displayToast(error.response!.statusMessage.toString());
      displayToast(error.message);
    });
  }

  Future<ResSignIn?> signIn(
      {required BuildContext context, required ReqSignIn data}) async {
    showLoadingDialog(context: context);
    final result = await repositery.signIn(data);
    return result.when(success: (result) async {
      hideLoadingDialog(context: context);
      setBool(prefUserLogIn, true);
      navigationService.pushAndRemoveUntil(routeDashBoard);

      return result;
    }, failure: (error) {
      hideLoadingDialog(context: context);

      displayToast(error.response!.statusMessage.toString());
    });
  }
}
