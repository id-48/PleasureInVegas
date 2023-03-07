import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/data/datasource/app_dio.dart';

import 'package:pleasure_in_vegas/data/model/home/menu/get_main_menu/res_get_main_menu.dart';
import 'package:pleasure_in_vegas/data/model/result.dart';
import 'package:pleasure_in_vegas/utils/constants/api_end_points.dart';

abstract class HomeRepository {
  Future<Result<ResGetMainMenu>> getMainMenu();



}

final homeRepositoryProvider = Provider((ref) => homeRepositoryImpl(ref.read));

class homeRepositoryImpl implements HomeRepository {
  homeRepositoryImpl(this._reader);

  // final Reader _reader;
  final _reader;

  late final Dio dio = _reader(dioProvider);

  @override
  Future<Result<ResGetMainMenu>> getMainMenu() {
    return Result.guardFuture(() async {
      return dio.get(apiGetMainMenu,
          options: Options(headers: {"Authorization":"Basic U2hhbGVuOlByb2N5b24zNjg5"})).then((value) async {

        final data = ResGetMainMenu.fromJson(jsonDecode(value.data));



        return data;
      });
    }).catchError((error) {
      throw error;
    });
  }






}
// Future<Result<List<ResGetMainMenu>>> getMainMenu() {
//
//   List<ResGetMainMenu> datum = [] ;
//   return Result.guardFuture(() async {
//     return dio.get(apiGetMainMenu,
//         options: Options(headers: {"Authorization":"Basic U2hhbGVuOlByb2N5b24zNjg5"})).then((value) async {
//
//       var jsonDecorder = jsonDecode(value.data);
//       for (int i = 0; i < jsonDecorder.length; i++) {
//         datum.add(ResGetMainMenu(
//           status: jsonDecorder[i]["status"],
//           msg: jsonDecorder[i]["msg"],
//           data: jsonDecorder[i]["data"],
//         ));
//       }
//
//
//
//
//
//
//
//       return datum;
//     });
//   }).catchError((error) {
//     throw error;
//   });
// }