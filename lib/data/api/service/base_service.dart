import 'package:dio/dio.dart';

class BaseService {
  static const BASE_URL = 'http://localhost:8080/';
  static final Dio Client = Dio(BaseOptions(baseUrl: BASE_URL));
}
