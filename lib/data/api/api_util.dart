import 'package:site_kaf_client/data/api/service/about_service.dart';
import 'package:site_kaf_client/data/mapper/about_mapper.dart';
import 'package:site_kaf_client/domain/model/announcement.dart';

class ApiUtil {
  final AboutService _aboutService;

  ApiUtil(this._aboutService);

  Future<List<Announcement>> getAnnouncements() async {
    final result = await _aboutService.getAnnouncements();
    return AboutMapper.listAnnouncementsFromApi(result);
  }
}
