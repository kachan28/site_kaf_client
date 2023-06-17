import 'package:site_kaf_client/domain/model/announcement.dart';

abstract class AboutRepository {
  Future<List<Announcement>> getAnnouncements();
}
