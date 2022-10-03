import 'package:dio/dio.dart';
import 'package:tech_tuesday/core/utils/config.dart';

class API {
  static String get _apiUrl => Config.apiUrl;

  static Future<dynamic> get(String route) async {
    print('$_apiUrl/$route');
    var res = await Dio().get('$_apiUrl/$route');
    return res.data;
  }
}
