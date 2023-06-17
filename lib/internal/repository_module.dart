import 'package:site_kaf_client/data/repository/about_repository.dart';
import 'package:site_kaf_client/domain/repository/about_repository.dart';
import 'package:site_kaf_client/internal/api_module.dart';

class RepositoryModule {
  static final AboutRepository _aboutRepository =
      AboutDataRepository(ApiModule.apiUtil());

  static AboutRepository aboutRepository() {
    return _aboutRepository;
  }
}
