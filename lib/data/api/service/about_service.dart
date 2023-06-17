import 'package:site_kaf_client/data/api/model/announcement.dart';

import 'base_service.dart';

class AboutService extends BaseService {
  final getAnnouncementsApi = '/';

  Future<List<ApiAnnouncement>> getAnnouncements() async {
    final response = await BaseService.Client.get(getAnnouncementsApi);
    return ApiAnnouncement.getList(response.data);
  }
}
