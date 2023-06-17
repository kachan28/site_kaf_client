import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:site_kaf_client/domain/model/announcement.dart';
import 'package:site_kaf_client/domain/repository/about_repository.dart';
part 'about_state.g.dart';

class AboutState = AboutStateBase with _$AboutState;

abstract class AboutStateBase with Store {
  AboutStateBase(this._aboutRepository);

  final AboutRepository _aboutRepository;

  @observable
  ObservableList<Announcement> announcements = ObservableList();
  @observable
  bool isLoading = false;

  @action
  Future<void> getAnnouncements() async {
    isLoading = true;
    announcements.clear();
    final announcementsData = await _aboutRepository.getAnnouncements();
    for (var announcement in announcementsData) {
      announcements.add(announcement);
    }
    isLoading = false;
  }
}
