class ApiAnnouncement {
  final String header;
  final String text;
  final String photoPath;

  ApiAnnouncement({
    required this.header,
    required this.text,
    required this.photoPath,
  });

  ApiAnnouncement.fromApi(Map<String, dynamic> map)
      : header = map['header'],
        text = map['text'],
        photoPath = map['photo_path'];

  static List<ApiAnnouncement> getList(List<dynamic> rawannouncements) {
    var apiAnnouncements = <ApiAnnouncement>[];
    rawannouncements.forEach((rawannouncement) {
      apiAnnouncements.add(ApiAnnouncement.fromApi(rawannouncement));
    });
    return apiAnnouncements;
  }
}
