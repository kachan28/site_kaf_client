import 'package:site_kaf_client/data/api/api_util.dart';
import 'package:site_kaf_client/domain/model/announcement.dart';
import 'package:site_kaf_client/domain/repository/about_repository.dart';

class AboutDataRepository extends AboutRepository {
  final ApiUtil _apiUtil;

  AboutDataRepository(this._apiUtil);

  @override
  Future<List<Announcement>> getAnnouncements() {
    return _apiUtil.getAnnouncements();
  }
}
