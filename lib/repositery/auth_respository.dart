import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/data/datasource/app_dio.dart';
import 'package:pleasure_in_vegas/data/model/auth/sign_in/req_sign_in.dart';
import 'package:pleasure_in_vegas/data/model/auth/sign_in/res_sign_in.dart';

import 'package:pleasure_in_vegas/data/model/auth/sign_up/req_sign_up.dart';
import 'package:pleasure_in_vegas/data/model/auth/sign_up/res_sign_up.dart';
import 'package:pleasure_in_vegas/data/model/result.dart';
import 'package:pleasure_in_vegas/utils/constants/api_end_points.dart';
import 'package:pleasure_in_vegas/utils/dialog_utils.dart';

abstract class AuthRepository {
  Future<Result<ResSignUp>> signUp(ReqSignUp data);

  Future<Result<ResSignIn>> signIn(ReqSignIn data);

}

final authRepositoryProvider = Provider((ref) => authRepositoryImpl(ref.read));

class authRepositoryImpl implements AuthRepository {
  authRepositoryImpl(this._reader);

  // final Reader _reader;
  final _reader;

  late final Dio dio = _reader(dioProvider);

  @override
  Future<Result<ResSignUp>> signUp(ReqSignUp data) {
    return Result.guardFuture(() async {
      return AppDio().post(apiPostUserRegister,data: FormData.fromMap( data.toJson()),
          options: Options(headers: {"Authorization":"Basic U2hhbGVuOlByb2N5b24zNjg5"})).then((value) async {

        final data = ResSignUp.fromJson(jsonDecode(value.data));



        return data;
      });
    }).catchError((error) {

      throw error;
    });
  }




  @override
  Future<Result<ResSignIn>> signIn(ReqSignIn data) {
    return Result.guardFuture(() async {
      return AppDio().post(
          apiPostUserLogIn,data: FormData.fromMap( data.toJson()),
          options: Options(headers: {"Authorization":"Basic U2hhbGVuOlByb2N5b24zNjg5"})).then((value) async {

            print("valala----->$value");
            print("valala----->${value.data}");

        final data = ResSignIn.fromJson(jsonDecode(value.data));



        return data;
      });
    }).catchError((error) {

      throw error;
    });
  }

}
