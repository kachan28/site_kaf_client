import 'package:site_kaf_client/internal/repository_module.dart';
import 'package:site_kaf_client/domain/state/about_state.dart';

class AboutModule {
  static AboutState aboutState() {
    return AboutState(
      RepositoryModule.aboutRepository(),
    );
  }
}
