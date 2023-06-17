import 'package:site_kaf_client/data/api/model/announcement.dart';
import 'package:site_kaf_client/domain/model/announcement.dart';

class AboutMapper {
  static Announcement announcementFromApi(ApiAnnouncement ann) {
    return Announcement(
        header: ann.header, text: ann.text, photoPath: ann.photoPath);
  }

  static List<Announcement> listAnnouncementsFromApi(
      List<ApiAnnouncement> anns) {
    var list = <Announcement>[];
    anns.forEach((element) {
      list.add(announcementFromApi(element));
    });
    return list;
  }
}
