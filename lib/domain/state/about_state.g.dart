// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AboutState on AboutStateBase, Store {
  late final _$announcementsAtom =
      Atom(name: 'AboutStateBase.announcements', context: context);

  @override
  ObservableList<Announcement> get announcements {
    _$announcementsAtom.reportRead();
    return super.announcements;
  }

  @override
  set announcements(ObservableList<Announcement> value) {
    _$announcementsAtom.reportWrite(value, super.announcements, () {
      super.announcements = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'AboutStateBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getAnnouncementsAsyncAction =
      AsyncAction('AboutStateBase.getAnnouncements', context: context);

  @override
  Future<void> getAnnouncements() {
    return _$getAnnouncementsAsyncAction.run(() => super.getAnnouncements());
  }

  @override
  String toString() {
    return '''
announcements: ${announcements},
isLoading: ${isLoading}
    ''';
  }
}
