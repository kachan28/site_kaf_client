import 'package:site_kaf_client/data/api/api_util.dart';
import 'package:site_kaf_client/data/api/service/about_service.dart';

class ApiModule {
  static final ApiUtil _apiUtil = ApiUtil(AboutService());

  static ApiUtil apiUtil() {
    return _apiUtil;
  }
}
